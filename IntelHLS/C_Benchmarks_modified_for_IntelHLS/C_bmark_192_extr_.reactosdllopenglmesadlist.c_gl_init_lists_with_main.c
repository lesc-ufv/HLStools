#include "HLS/hls.h"
#define NULL 0
typedef unsigned long size_t;  // Customize by platform.
typedef int scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int* InstSize ; 
 size_t OPCODE_ACCUM ; 
 size_t OPCODE_ALPHA_FUNC ; 
 size_t OPCODE_BEGIN ; 
 size_t OPCODE_BIND_TEXTURE ; 
 size_t OPCODE_BITMAP ; 
 size_t OPCODE_BLEND_FUNC ; 
 size_t OPCODE_CALL_LIST ; 
 size_t OPCODE_CALL_LIST_OFFSET ; 
 size_t OPCODE_CLEAR ; 
 size_t OPCODE_CLEAR_ACCUM ; 
 size_t OPCODE_CLEAR_COLOR ; 
 size_t OPCODE_CLEAR_DEPTH ; 
 size_t OPCODE_CLEAR_INDEX ; 
 size_t OPCODE_CLEAR_STENCIL ; 
 size_t OPCODE_CLIP_PLANE ; 
 size_t OPCODE_COLOR_3F ; 
 size_t OPCODE_COLOR_4F ; 
 size_t OPCODE_COLOR_4UB ; 
 size_t OPCODE_COLOR_MASK ; 
 size_t OPCODE_COLOR_MATERIAL ; 
 size_t OPCODE_COLOR_SUB_TABLE ; 
 size_t OPCODE_COLOR_TABLE ; 
 size_t OPCODE_CONTINUE ; 
 size_t OPCODE_COPY_PIXELS ; 
 size_t OPCODE_COPY_TEX_IMAGE1D ; 
 size_t OPCODE_COPY_TEX_IMAGE2D ; 
 size_t OPCODE_COPY_TEX_SUB_IMAGE1D ; 
 size_t OPCODE_COPY_TEX_SUB_IMAGE2D ; 
 size_t OPCODE_CULL_FACE ; 
 size_t OPCODE_DEPTH_FUNC ; 
 size_t OPCODE_DEPTH_MASK ; 
 size_t OPCODE_DEPTH_RANGE ; 
 size_t OPCODE_DISABLE ; 
 size_t OPCODE_DRAW_BUFFER ; 
 size_t OPCODE_DRAW_PIXELS ; 
 size_t OPCODE_EDGE_FLAG ; 
 size_t OPCODE_ENABLE ; 
 size_t OPCODE_END ; 
 size_t OPCODE_END_OF_LIST ; 
 size_t OPCODE_EVALCOORD1 ; 
 size_t OPCODE_EVALCOORD2 ; 
 size_t OPCODE_EVALMESH1 ; 
 size_t OPCODE_EVALMESH2 ; 
 size_t OPCODE_EVALPOINT1 ; 
 size_t OPCODE_EVALPOINT2 ; 
 size_t OPCODE_FOG ; 
 size_t OPCODE_FRONT_FACE ; 
 size_t OPCODE_FRUSTUM ; 
 size_t OPCODE_HINT ; 
 size_t OPCODE_INDEX ; 
 size_t OPCODE_INDEX_MASK ; 
 size_t OPCODE_INIT_NAMES ; 
 size_t OPCODE_LIGHT ; 
 size_t OPCODE_LIGHT_MODEL ; 
 size_t OPCODE_LINE_STIPPLE ; 
 size_t OPCODE_LINE_WIDTH ; 
 size_t OPCODE_LIST_BASE ; 
 size_t OPCODE_LOAD_IDENTITY ; 
 size_t OPCODE_LOAD_MATRIX ; 
 size_t OPCODE_LOAD_NAME ; 
 size_t OPCODE_LOGIC_OP ; 
 size_t OPCODE_MAP1 ; 
 size_t OPCODE_MAP2 ; 
 size_t OPCODE_MAPGRID1 ; 
 size_t OPCODE_MAPGRID2 ; 
 size_t OPCODE_MATERIAL ; 
 size_t OPCODE_MATRIX_MODE ; 
 size_t OPCODE_MULT_MATRIX ; 
 size_t OPCODE_NORMAL ; 
 size_t OPCODE_ORTHO ; 
 size_t OPCODE_PASSTHROUGH ; 
 size_t OPCODE_PIXEL_MAP ; 
 size_t OPCODE_PIXEL_TRANSFER ; 
 size_t OPCODE_PIXEL_ZOOM ; 
 size_t OPCODE_POINT_SIZE ; 
 size_t OPCODE_POLYGON_MODE ; 
 size_t OPCODE_POLYGON_OFFSET ; 
 size_t OPCODE_POLYGON_STIPPLE ; 
 size_t OPCODE_POP_ATTRIB ; 
 size_t OPCODE_POP_MATRIX ; 
 size_t OPCODE_POP_NAME ; 
 size_t OPCODE_PRIORITIZE_TEXTURE ; 
 size_t OPCODE_PUSH_ATTRIB ; 
 size_t OPCODE_PUSH_MATRIX ; 
 size_t OPCODE_PUSH_NAME ; 
 size_t OPCODE_RASTER_POS ; 
 size_t OPCODE_READ_BUFFER ; 
 size_t OPCODE_RECTF ; 
 size_t OPCODE_SCALE ; 
 size_t OPCODE_SCISSOR ; 
 size_t OPCODE_SHADE_MODEL ; 
 size_t OPCODE_STENCIL_FUNC ; 
 size_t OPCODE_STENCIL_MASK ; 
 size_t OPCODE_STENCIL_OP ; 
 size_t OPCODE_TEXCOORD2 ; 
 size_t OPCODE_TEXCOORD4 ; 
 size_t OPCODE_TEXENV ; 
 size_t OPCODE_TEXGEN ; 
 size_t OPCODE_TEXPARAMETER ; 
 size_t OPCODE_TEX_IMAGE1D ; 
 size_t OPCODE_TEX_IMAGE2D ; 
 size_t OPCODE_TEX_SUB_IMAGE1D ; 
 size_t OPCODE_TEX_SUB_IMAGE2D ; 
 size_t OPCODE_TRANSLATE ; 
 size_t OPCODE_VERTEX2 ; 
 size_t OPCODE_VERTEX3 ; 
 size_t OPCODE_VERTEX4 ; 
 size_t OPCODE_VIEWPORT ; 
component 
void gl_init_lists( void )
{
   static int init_flag = 0;

   if (init_flag==0) {
      InstSize[OPCODE_ACCUM] = 3;
      InstSize[OPCODE_ALPHA_FUNC] = 3;
      InstSize[OPCODE_BEGIN] = 2;
      InstSize[OPCODE_BIND_TEXTURE] = 3;
      InstSize[OPCODE_BITMAP] = 8;
      InstSize[OPCODE_BLEND_FUNC] = 3;
      InstSize[OPCODE_CALL_LIST] = 2;
      InstSize[OPCODE_CALL_LIST_OFFSET] = 2;
      InstSize[OPCODE_CLEAR] = 2;
      InstSize[OPCODE_CLEAR_ACCUM] = 5;
      InstSize[OPCODE_CLEAR_COLOR] = 5;
      InstSize[OPCODE_CLEAR_DEPTH] = 2;
      InstSize[OPCODE_CLEAR_INDEX] = 2;
      InstSize[OPCODE_CLEAR_STENCIL] = 2;
      InstSize[OPCODE_CLIP_PLANE] = 6;
      InstSize[OPCODE_COLOR_3F] = 4;
      InstSize[OPCODE_COLOR_4F] = 5;
      InstSize[OPCODE_COLOR_4UB] = 5;
      InstSize[OPCODE_COLOR_MASK] = 5;
      InstSize[OPCODE_COLOR_MATERIAL] = 3;
      InstSize[OPCODE_COLOR_TABLE] = 4;
      InstSize[OPCODE_COLOR_SUB_TABLE] = 4;
      InstSize[OPCODE_COPY_PIXELS] = 6;
      InstSize[OPCODE_COPY_TEX_IMAGE1D] = 8;
      InstSize[OPCODE_COPY_TEX_IMAGE2D] = 9;
      InstSize[OPCODE_COPY_TEX_SUB_IMAGE1D] = 7;
      InstSize[OPCODE_COPY_TEX_SUB_IMAGE2D] = 9;
      InstSize[OPCODE_CULL_FACE] = 2;
      InstSize[OPCODE_DEPTH_FUNC] = 2;
      InstSize[OPCODE_DEPTH_MASK] = 2;
      InstSize[OPCODE_DEPTH_RANGE] = 3;
      InstSize[OPCODE_DISABLE] = 2;
      InstSize[OPCODE_DRAW_BUFFER] = 2;
      InstSize[OPCODE_DRAW_PIXELS] = 6;
      InstSize[OPCODE_ENABLE] = 2;
      InstSize[OPCODE_EDGE_FLAG] = 2;
      InstSize[OPCODE_END] = 1;
      InstSize[OPCODE_EVALCOORD1] = 2;
      InstSize[OPCODE_EVALCOORD2] = 3;
      InstSize[OPCODE_EVALMESH1] = 4;
      InstSize[OPCODE_EVALMESH2] = 6;
      InstSize[OPCODE_EVALPOINT1] = 2;
      InstSize[OPCODE_EVALPOINT2] = 3;
      InstSize[OPCODE_FOG] = 6;
      InstSize[OPCODE_FRONT_FACE] = 2;
      InstSize[OPCODE_FRUSTUM] = 7;
      InstSize[OPCODE_HINT] = 3;
      InstSize[OPCODE_INDEX] = 2;
      InstSize[OPCODE_INDEX_MASK] = 2;
      InstSize[OPCODE_INIT_NAMES] = 1;
      InstSize[OPCODE_LIGHT] = 7;
      InstSize[OPCODE_LIGHT_MODEL] = 6;
      InstSize[OPCODE_LINE_STIPPLE] = 3;
      InstSize[OPCODE_LINE_WIDTH] = 2;
      InstSize[OPCODE_LIST_BASE] = 2;
      InstSize[OPCODE_LOAD_IDENTITY] = 1;
      InstSize[OPCODE_LOAD_MATRIX] = 17;
      InstSize[OPCODE_LOAD_NAME] = 2;
      InstSize[OPCODE_LOGIC_OP] = 2;
      InstSize[OPCODE_MAP1] = 7;
      InstSize[OPCODE_MAP2] = 11;
      InstSize[OPCODE_MAPGRID1] = 4;
      InstSize[OPCODE_MAPGRID2] = 7;
      InstSize[OPCODE_MATERIAL] = 7;
      InstSize[OPCODE_MATRIX_MODE] = 2;
      InstSize[OPCODE_MULT_MATRIX] = 17;
      InstSize[OPCODE_NORMAL] = 4;
      InstSize[OPCODE_ORTHO] = 7;
      InstSize[OPCODE_PASSTHROUGH] = 2;
      InstSize[OPCODE_PIXEL_MAP] = 4;
      InstSize[OPCODE_PIXEL_TRANSFER] = 3;
      InstSize[OPCODE_PIXEL_ZOOM] = 3;
      InstSize[OPCODE_POINT_SIZE] = 2;
      InstSize[OPCODE_POLYGON_MODE] = 3;
      InstSize[OPCODE_POLYGON_STIPPLE] = 2;
      InstSize[OPCODE_POLYGON_OFFSET] = 3;
      InstSize[OPCODE_POP_ATTRIB] = 1;
      InstSize[OPCODE_POP_MATRIX] = 1;
      InstSize[OPCODE_POP_NAME] = 1;
      InstSize[OPCODE_PRIORITIZE_TEXTURE] = 3;
      InstSize[OPCODE_PUSH_ATTRIB] = 2;
      InstSize[OPCODE_PUSH_MATRIX] = 1;
      InstSize[OPCODE_PUSH_NAME] = 2;
      InstSize[OPCODE_RASTER_POS] = 5;
      InstSize[OPCODE_RECTF] = 5;
      InstSize[OPCODE_READ_BUFFER] = 2;
      InstSize[OPCODE_SCALE] = 4;
      InstSize[OPCODE_SCISSOR] = 5;
      InstSize[OPCODE_STENCIL_FUNC] = 4;
      InstSize[OPCODE_STENCIL_MASK] = 2;
      InstSize[OPCODE_STENCIL_OP] = 4;
      InstSize[OPCODE_SHADE_MODEL] = 2;
      InstSize[OPCODE_TEXCOORD2] = 3;
      InstSize[OPCODE_TEXCOORD4] = 5;
      InstSize[OPCODE_TEXENV] = 7;
      InstSize[OPCODE_TEXGEN] = 7;
      InstSize[OPCODE_TEXPARAMETER] = 7;
      InstSize[OPCODE_TEX_IMAGE1D] = 9;
      InstSize[OPCODE_TEX_IMAGE2D] = 10;
      InstSize[OPCODE_TEX_SUB_IMAGE1D] = 8;
      InstSize[OPCODE_TEX_SUB_IMAGE2D] = 10;
      InstSize[OPCODE_TRANSLATE] = 4;
      InstSize[OPCODE_VERTEX2] = 3;
      InstSize[OPCODE_VERTEX3] = 4;
      InstSize[OPCODE_VERTEX4] = 5;
      InstSize[OPCODE_VIEWPORT] = 5;
      InstSize[OPCODE_CONTINUE] = 2;
      InstSize[OPCODE_END_OF_LIST] = 1;
   }
   init_flag = 1;
}/* Main routine for gl_init_lists */
int main() {
  gl_init_lists();
  return 0;
}
