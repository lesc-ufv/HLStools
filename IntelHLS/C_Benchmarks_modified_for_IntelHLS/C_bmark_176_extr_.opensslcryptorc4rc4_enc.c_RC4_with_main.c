#include "HLS/hls.h"
#define NULL 0
typedef unsigned long size_t;  // Customize by platform.
typedef int scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int x; int y; int* data; } ;
typedef  TYPE_1__ RC4_KEY ;
typedef  int RC4_INT ;

/* Variables and functions */
component 
void RC4(RC4_KEY *key, size_t len, const unsigned char *indata,
         unsigned char *outdata)
{
    register RC4_INT *d;
    register RC4_INT x, y, tx, ty;
    size_t i;

    x = key->x;
    y = key->y;
    d = key->data;

#define LOOP(in,out) \
                x=((x+1)&0xff); \
                tx=d[x]; \
                y=(tx+y)&0xff; \
                d[x]=ty=d[y]; \
                d[y]=tx; \
                (out) = d[(tx+ty)&0xff]^ (in);

    i = len >> 3;
    if (i) {
        for (;;) {
            LOOP(indata[0], outdata[0]);
            LOOP(indata[1], outdata[1]);
            LOOP(indata[2], outdata[2]);
            LOOP(indata[3], outdata[3]);
            LOOP(indata[4], outdata[4]);
            LOOP(indata[5], outdata[5]);
            LOOP(indata[6], outdata[6]);
            LOOP(indata[7], outdata[7]);
            indata += 8;
            outdata += 8;
            if (--i == 0)
                break;
        }
    }
    i = len & 0x07;
    if (i) {
        for (;;) {
            LOOP(indata[0], outdata[0]);
            if (--i == 0)
                break;
            LOOP(indata[1], outdata[1]);
            if (--i == 0)
                break;
            LOOP(indata[2], outdata[2]);
            if (--i == 0)
                break;
            LOOP(indata[3], outdata[3]);
            if (--i == 0)
                break;
            LOOP(indata[4], outdata[4]);
            if (--i == 0)
                break;
            LOOP(indata[5], outdata[5]);
            if (--i == 0)
                break;
            LOOP(indata[6], outdata[6]);
            if (--i == 0)
                break;
        }
    }
    key->x = x;
    key->y = y;
}/* Main routine for RC4 */
int main() {
  RC4_KEY * key;
  size_t len;
  const unsigned char * indata;
  unsigned char * outdata;
  RC4(key, len, indata, outdata);
  return 0;
}
