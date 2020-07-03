# set environment quartus 19.4
/opt/synopsys/scl/licenses/start_license_server &> /dev/null
export PATH=$PATH:/opt/altera_pro/19.4/modelsim_ae/bin

# initializate variables hls
source /opt/altera_pro/19.4/hls/init_hls.sh > /tmp/trash.txt

BENCHMARKS=(
    'extr_.anypixelfirmwaredisplayThirdPartySPLsrcstm32f0xx_rcc.c_RCC_GetClocksFreq_with_main' 
    'extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main' 
    'extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp932ext.h_cp932ext_wctomb_with_main' 
    'extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libgb18030ext.h_gb18030ext_wctomb_with_main' 
    'extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libhkscs1999.h_hkscs1999_wctomb_with_main' 
    'extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libhkscs2001.h_hkscs2001_wctomb_with_main' 
    'extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libhkscs2004.h_hkscs2004_wctomb_with_main' 
    'extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libhkscs2008.h_hkscs2008_wctomb_with_main' 
    'extr_.BGAQRCode-Androidzbarsrcmainjnizbardecoderdatabar.c_calc_value4_with_main' 
    'extr_.BGAQRCode-Androidzbarsrcmainjnizbarqrcodeisaac.c_isaac_update_with_main' 
    'extr_.ccvlibccv_util.c__ccv_sparse_matrix_index_for_hash_with_main' 
    'extr_.ccvlibnnccmdconvolutioncpu_opt_ccv_nnc_conv_cpu_4x4_3x3_winograd.c__ccv_nnc_winograd_4x4_3x3_gwtg_ref_with_main' 
    'extr_.Craftdepsglfwsrccontext.c__glfwChooseFBConfig_with_main' 
    'extr_.Craftdepsglfwsrcmir_window.c_toGLFWKeyCode_with_main' 
    'extr_.Craftdepsglfwsrcwl_init.c_toGLFWKeyCode_with_main' 
    'extr_.Craftdepslodepnglodepng.c_getPixelColorRGBA16_with_main' 
    'extr_.Craftsrccube.c_make_cube_faces_with_main' 
    'extr_.darknetsrcimage.c_draw_box_with_main' 
    'extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main' 
    'extr_.disquedepsjemallocsrcctl.c_ctl_arena_stats_smerge_with_main' 
    'extr_.emscriptensystemlibhtml5dom_pk_codes.c_emscripten_compute_dom_pk_code_with_main' 
    'extr_.emscriptensystemlibhtml5key_codes.c_emscripten_dom_vk_to_string_with_main' 
    'extr_.emscriptensystemliblibcmuslsrccryptcrypt_des.c___do_des_with_main' 
    'extr_.emscriptentestsfuzz15.c_func_3_with_main' 
    'extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_fixed_with_main' 
    'extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_with_main' 
    'extr_.FFmpeglibavcodecac3enc.c_count_frame_bits_with_main' 
    'extr_.FFmpeglibavcodecagm.c_fill_pixels_with_main' 
    'extr_.FFmpeglibavcodecalphasimple_idct_alpha.c_idct_col_with_main' 
    'extr_.FFmpeglibavcodeccinepakenc.c_calculate_mode_score_with_main' 
    'extr_.FFmpeglibavcodecdca_lbr.c_synth_tones_with_main' 
    'extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main' 
    'extr_.FFmpeglibavcodecflacenc.c_encode_residual_fixed_with_main' 
    'extr_.FFmpeglibavcodecg722.c_s_zero_with_main' 
    'extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main' 
    'extr_.FFmpeglibavcodecmdct15.c_fft5_with_main' 
    'extr_.FFmpeglibavcodecmpegvideo_motion.c_put_obmc_with_main' 
    'extr_.FFmpeglibavcodecpngdec.c_handle_small_bpp_with_main' 
    'extr_.FFmpeglibavcodecroqvideo.c_ff_apply_vector_4x4_with_main' 
    'extr_.FFmpeglibavcodecsbc.c_ff_sbc_calculate_bits_with_main' 
    'extr_.FFmpeglibavcodecsbrdsp.c_sbr_autocorrelate_c_with_main' 
    'extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main' 
    'extr_.FFmpeglibavcodecscpr.h_decode_run_p_with_main' 
    'extr_.FFmpeglibavcodecsnow_dwt.c_ff_snow_horizontal_compose97i_with_main' 
    'extr_.FFmpeglibavcodecttadsp.c_tta_filter_process_c_with_main' 
    'extr_.FFmpeglibavcodecttaencdsp.c_ttaenc_filter_process_c_with_main' 
    'extr_.FFmpeglibavcodecvc1dsp.c_vc1_inv_trans_8x8_c_with_main' 
    'extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main' 
    'extr_.FFmpeglibavcodecwavpackenc.c_reverse_decorr_with_main' 
    'extr_.FFmpeglibavcodecxface.c_ff_xface_generate_face_with_main' 
    'extr_.FFmpeglibavcodecxvididct.c_idct_row_with_main' 
    'extr_.FFmpeglibavdevicepulse_audio_enc.c_pulse_map_channels_to_pulse_with_main' 
    'extr_.FFmpeglibavfilteraf_anequalizer.c_chebyshev1_fo_section_with_main' 
    'extr_.FFmpeglibavfilteraf_anequalizer.c_chebyshev2_fo_section_with_main' 
    'extr_.FFmpeglibavfiltersignature_lookup.c_iterate_frame_with_main' 
    'extr_.FFmpeglibavfiltervf_colorbalance.c_apply_lut16_p_with_main' 
    'extr_.FFmpeglibavfiltervf_colorbalance.c_apply_lut8_p_with_main' 
    'extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main' 
    'extr_.FFmpeglibavfiltervf_curves.c_filter_slice_packed_with_main' 
    'extr_.FFmpeglibavfiltervf_curves.c_filter_slice_planar_with_main' 
    'extr_.FFmpeglibavfiltervf_spp.c_store_slice16_c_with_main' 
    'extr_.FFmpeglibavfiltervf_spp.c_store_slice_c_with_main' 
    'extr_.FFmpeglibavfiltervf_uspp.c_store_slice_c_with_main' 
    'extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main' 
    'extr_.FFmpeglibswscalergb2rgb_template.c_planar2x_c_with_main' 
    'extr_.gitcompatmingw.c_xutftowcsn_with_main' 
    'extr_.gitsha1dcubc_check.c_ubc_check_with_main' 
    'extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fproduct_with_main' 
    'extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fsquare_inner_with_main' 
    'extr_.kittyglfwcontext.c__glfwChooseFBConfig_with_main' 
    'extr_.kittykittyunicode-data.c_mark_for_codepoint_with_main' 
    'extr_.kphp-kdbcommoncrc32c.c_crc32c_partial_four_tables_with_main' 
    'extr_.kphp-kdbcommoncrc32.c_crc32_partial_with_main' 
    'extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main' 
    'extr_.kphp-kdbhintsutf8_utils.c_translit_from_ru_to_en_with_main' 
    'extr_.kphp-kdbisearchutf8_utils.c_translit_from_en_to_ru_with_main' 
    'extr_.kphp-kdbisearchutf8_utils.c_translit_from_ru_to_en_with_main' 
    'extr_.kphp-kdbtargtarg-search.c_postprocess_res_std_with_main' 
    'extr_.kphp-kdbvkextcrc32.c_crc32_partial_with_main' 
    'extr_.labenginecodebspcbrushbsp.c_BoxOnPlaneSide_with_main' 
    'extr_.labenginecodeclientsnd_mix.c_S_PaintChannelFrom16_scalar_with_main' 
    'extr_.labenginecoderenderercommontr_image_png.c_ConvertPixel_with_main' 
    'extr_.labenginecoderenderergl1tr_model_iqm.c_Matrix34Multiply_with_main' 
    'extr_.labenginecoderenderergl2tr_extramath.c_Mat4Multiply_with_main' 
    'extr_.labenginecoderenderergl2tr_model_iqm.c_Matrix34Multiply_with_main' 
    'extr_.labq3map2libsddslibddslib.c_DDSDecodeAlpha3BitLinear_with_main' 
    'extr_.labq3map2libsmathlibm4x4.c_m4x4_multiply_by_m4x4_with_main' 
    'extr_.labq3map2libsmathlibm4x4.c_m4x4_premultiply_by_m4x4_with_main' 
    'extr_.labq3map2q3map2mesh.c_PutMeshOnCurve_with_main' 
    'extr_.libgit2srchashsha1dcubc_check.c_ubc_check_with_main' 
    'extr_.linuxarchpowerpckvmbooke_emulate.c_kvmppc_booke_emulate_mfspr_with_main' 
    'extr_.linuxarchx86kernelcpuintel.c_intel_tlb_lookup_with_main' 
    'extr_.linuxcryptocast5_generic.c_key_schedule_with_main' 
    'extr_.linuxdriversgpudrmamddisplaydccoredc.c_get_scaling_info_update_type_with_main' 
    'extr_.linuxdriversgpudrmamdpowerplayhwmgrsmu7_hwmgr.c_smu7_get_profiling_clk_with_main' 
    'extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main' 
    'extr_.linuxdriversgpudrmmediatekmtk_drm_ddp.c_mtk_ddp_mout_en_with_main' 
    'extr_.linuxdriversgpudrmradeonr100.c_r100_cs_track_clear_with_main' 
    'extr_.linuxdriversgpudrmradeonr600.c_rs780_pm_init_profile_with_main' 
    'extr_.linuxdriversgpudrmradeonradeon_combios.c_combios_setup_i2c_bus_with_main' 
    'extr_.linuxdriversinputmiscad714x.c_touchpad_check_endpoint_with_main' 
    'extr_.linuxdriversisdnhardwareeiconcapidtmf.c_capidtmf_goertzel_result_with_main' 
    'extr_.linuxdriversisdnhardwareeiconmessage.c_chi_to_channel_with_main' 
    'extr_.linuxdriversmediacommoncx2341x.c_cx2341x_set_ctrl_with_main' 
    'extr_.linuxdriversmediacommonv4l2-tpgv4l2-tpg-core.c_tpg_calculate_square_border_with_main' 
    'extr_.linuxdriversmediacommonv4l2-tpgv4l2-tpg-core.c_tpg_s_fourcc_with_main' 
    'extr_.linuxdriversmediadvb-frontendsdrxd_hard.c_CDRXD_with_main' 
    'extr_.linuxdriversmediadvb-frontendsmb86a16.c_smrt_info_get_with_main' 
    'extr_.linuxdriversmediadvb-frontendsmb86a16.c_swp_freq_calcuation_with_main' 
    'extr_.linuxdriversmediadvb-frontendsstv090x.c_stv090x_optimize_carloop_with_main' 
    'extr_.linuxdriversmediafirewirefiredtv-avc.c_avc_tuner_tuneqpsk_with_main' 
    'extr_.linuxdriversmediapciivtvivtv-yuv.c_ivtv_yuv_window_setup_with_main' 
    'extr_.linuxdriversmediaplatformvicodecvicodec-codec.c_fwht16_with_main' 
    'extr_.linuxdriversmediaplatformvicodecvicodec-codec.c_fwht_with_main' 
    'extr_.linuxdriversmediaplatformvicodecvicodec-codec.c_ifwht_with_main' 
    'extr_.linuxdriversmediatunersmxl5005s.c_MXL5005_RegisterInit_with_main' 
    'extr_.linuxdriversmediav4l2-corev4l2-ctrls.c_v4l2_ctrl_get_name_with_main' 
    'extr_.linuxdriversmediav4l2-corev4l2-dv-timings.c_v4l2_detect_cvt_with_main' 
    'extr_.linuxdriversnetethernetatherosatlxatl1.c_atl1_inc_smb_with_main' 
    'extr_.linuxdriversnetethernetbroadcombnx2xbnx2x_reg.h_calc_crc8_with_main' 
    'extr_.linuxdriversnetethernetbrocadebnabnad_ethtool.c_bnad_per_q_stats_fill_with_main' 
    'extr_.linuxdriversnetethernetintelixgbeixgbe_dcb_nl.c_ixgbe_copy_dcb_cfg_with_main' 
    'extr_.linuxdriversnetethernetmellanoxmlx5corecmd.c_mlx5_command_str_with_main' 
    'extr_.linuxdriversnetethernetsfcef10.c_efx_ef10_filter_match_flags_from_mcdi_with_main' 
    'extr_.linuxdriversnetwirelessathath9kantenna.c_ath_ant_div_conf_fast_divbias_with_main' 
    'extr_.linuxdriversnetwirelessathath9kdebug.c_ath_debug_stat_interrupt_with_main' 
    'extr_.linuxdriversstagingmediadavinci_vpfedm365_resizer.c_configure_resizer_out_params_with_main' 
    'extr_.linuxdriversstagingrtl8188euhalrf.c_get_rx_power_val_by_reg_with_main' 
    'extr_.linuxdriversstagingxgifbvb_setmode.c_XGI_AjustCRT2Rate_with_main' 
    'extr_.linuxdriversstagingxgifbXGI_main_26.c_XGIfb_validate_mode_with_main' 
    'extr_.linuxdriversttyserialip22zilog.c_ip22zilog_convert_to_zs_with_main' 
    'extr_.linuxdriversttyserialsunzilog.c_sunzilog_convert_to_zs_with_main' 
    'extr_.linuxdriversvideofbdevcyber2000fb.c_cyber2000fb_decode_crtc_with_main' 
    'extr_.linuxdriversvideofbdevimsttfb.c_imsttfb_check_var_with_main' 
    'extr_.linuxdriversvideofbdevmmpfbmmpfb.c_pixfmt_to_var_with_main' 
    'extr_.linuxdriversvideofbdevneofb.c_vgaHWInit_with_main' 
    'extr_.linuxdriversvideofbdevnvidianv_hw.c_nv10CalcArbitration_with_main' 
    'extr_.linuxdriversvideofbdevnvidianv_hw.c_nv4CalcArbitration_with_main' 
    'extr_.linuxdriversvideofbdevpxa168fb.c_set_pix_fmt_with_main' 
    'extr_.linuxdriversvideofbdevrivariva_hw.c_nv10CalcArbitration_with_main' 
    'extr_.linuxdriversvideofbdevrivariva_hw.c_nv4CalcArbitration_with_main' 
    'extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main' 
    'extr_.linuxdriversvideofbdevsisinit301.c_SiS_AdjustCRT2Rate_with_main' 
    'extr_.linuxdriversvideofbdevsisinit301.c_SiS_GetCRT2Ptr_with_main' 
    'extr_.linuxdriversvideofbdevsisinit.c_SiS_Generic_ConvertCRData_with_main' 
    'extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_LCD_with_main' 
    'extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_TV_with_main' 
    'extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_with_main' 
    'extr_.linuxfsafsmisc.c_afs_abort_to_error_with_main' 
    'extr_.linuxtoolsperfutilmem-events.c_c2c_decode_stats_with_main' 
    'extr_.linuxtoolsperfutilsession.c_perf_tool__fill_defaults_with_main' 
    'extr_.micropythondriverscc3000srcsecurity.c_expandKey_with_main' 
    'extr_.nginxsrccorengx_parse.c_ngx_parse_time_with_main' 
    'extr_.nginxsrccorengx_parse_time.c_ngx_parse_http_time_with_main' 
    'extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main' 
    'extr_.numpynumpylinalglapack_litef2c_z_lapack.c_zlaswp__with_main' 
    'extr_.obs-studiodepslibcaptionsrceia608_from_utf8.c__eia608_from_utf8_with_main' 
    'extr_.obs-studiolibobsobs-cocoa.c_obs_key_from_virtual_key_with_main' 
    'extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main' 
    'extr_.obs-studiolibobsobs-cocoa.c_usage_to_carbon_with_main' 
    'extr_.obs-studiolibobsobs-nix.c_get_keysym_with_main' 
    'extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main' 
    'extr_.openpilotselfdrivecontrolsliblateral_mpclib_mpc_exportacado_solver.c_acado_multCTQC_with_main' 
    'extr_.openpilotselfdrivecontrolsliblateral_mpclib_mpc_exportacado_solver.c_acado_multGxGx_with_main' 
    'extr_.openpilotselfdrivecontrolsliblateral_mpclib_mpc_exportacado_solver.c_acado_setObjQ1Q2_with_main' 
    'extr_.openpilotselfdrivecontrolsliblateral_mpclib_mpc_exportacado_solver.c_acado_setObjQN1QN2_with_main' 
    'extr_.openpilotselfdrivecontrolsliblongitudinal_mpclib_mpc_exportacado_solver.c_acado_setObjQ1Q2_with_main' 
    'extr_.openpilotselfdrivecontrolsliblongitudinal_mpclib_mpc_exportacado_solver.c_acado_setObjQN1QN2_with_main' 
    'extr_.opensslcryptoasn1a_utf8.c_UTF8_getc_with_main' 
    'extr_.opensslcryptoeccurve25519.c_fe_mul_with_main' 
    'extr_.opensslcryptoeccurve25519.c_fe_sq2_with_main' 
    'extr_.opensslcryptoeccurve25519.c_fe_sq_with_main' 
    'extr_.opensslcryptoeccurve25519.c_fe_tobytes_with_main' 
    'extr_.opensslcryptoececp_nistp256.c_smallfelem_mul_with_main' 
    'extr_.opensslcryptoececp_nistp521.c_felem_reduce_with_main' 
    'extr_.opensslcryptorc4rc4_enc.c_RC4_with_main' 
    'extr_.php-srcextffiffi.c_zend_ffi_val_character_with_main' 
    'extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main' 
    'extr_.php-srcextstandardcrypt_freesec.c_do_des_with_main' 
    'extr_.radare2libranalarchhexagonhexagon_anal.c_hexagon_anal_instruction_with_main' 
    'extr_.radare2librasmarcharmaarch64aarch64-dis-2.c_aarch64_find_next_alias_opcode_with_main' 
    'extr_.radare2librasmarcharmaarch64aarch64-dis-2.c_aarch64_find_next_opcode_with_main' 
    'extr_.radare2librasmarchppclibvlevle.c_set_e_fields_with_main' 
    'extr_.radare2librasmarchppclibvlevle.c_set_ppc_fields_with_main' 
    'extr_.radare2librasmarchtms320c55x_plushashtable.c_get_hashfunc_02_with_main' 
    'extr_.radare2librbinpdbtpi.c_init_stype_info_with_main' 
    'extr_.radare2librmagicascmagic.c_encode_utf8_with_main' 
    'extr_.reactosdll3rdpartydxtntxc_compress_dxtn.c_storedxtencodedblock_with_main' 
    'extr_.reactosdll3rdpartylibxsltxsltlocale.c_xsltDefaultRegion_with_main' 
    'extr_.reactosdllcpldeskpreview.c_CalculateItemSize_with_main' 
    'extr_.reactosdlldirectxwinewined3dstateblock.c_stateblock_init_contained_states_with_main' 
    'extr_.reactosdllopenglmesadlist.c_gl_init_lists_with_main' 
    'extr_.reactosdllopenglmesapointers.c_init_dlist_pointers_with_main' 
    'extr_.reactosdllopenglmesapointers.c_init_exec_pointers_with_main' 
    'extr_.reactosdllopenglmesatriangle.c_gl_set_triangle_function_with_main' 
    'extr_.reactosdllopenglmesaxform.c_gl_xform_points_4fv_with_main' 
    'extr_.reactosdllwin32shlwapiwsprintf.c_WPRINTF_ParseFormatA_with_main' 
    'extr_.reactosdllwin32shlwapiwsprintf.c_WPRINTF_ParseFormatW_with_main' 
    'extr_.reactosdllwin32usp10bidi.c_resolveResolved_with_main' 
    'extr_.reactossdklib3rdpartylibxml2parser.c_xmlCheckLanguageID_with_main' 
    'extr_.reactossdklib3rdpartylibxml2uri.c_xmlNormalizeURIPath_with_main' 
    'extr_.reactossdklib3rdpartylibxml2xpath.c_xmlXPathCmpNodesExt_with_main' 
    'extr_.reactossdklib3rdpartystlportsrcc_locale_win32c_locale_win32.c___ConvertDate_with_main' 
    'extr_.reactossdklib3rdpartystlportsrcc_locale_win32c_locale_win32.c___ConvertTime_with_main' 
    'extr_.reactossdktoolsunicodewctomb.c_wcstombs_sbcs_with_main' 
    'extr_.rufussrcstdio.c_GetVdsError_with_main' 
    'extr_.stbtestsprereleasestb_lib.h_stb_from_utf8_with_main' 
    'extr_.stbtools..stb.h_stb_from_utf8_with_main' 
    'extr_.tenginemodulesngx_http_tfs_modulengx_http_tfs_peer_connection.c_ngx_http_tfs_select_peer_v1_with_main' 
    'extr_.tenginemodulesngx_http_tfs_modulengx_http_tfs_peer_connection.c_ngx_http_tfs_select_peer_v2_with_main' 
    'extr_.tenginesrccorengx_parse.c_ngx_parse_time_with_main' 
    'extr_.tenginesrccorengx_parse_time.c_ngx_parse_http_time_with_main' 
    'extr_.tenginesrchttpngx_http_parse_time.c_ngx_http_parse_time_with_main' 
    'extr_.tmuxscreen.c_screen_check_selection_with_main' 
)

#SIMULATOR=modelsim
SIMULATOR=none

for ((i=0; i < ${#BENCHMARKS[@]}; i++)) do
    echo "RUNNING $i: "${BENCHMARKS[i]}
    rm -rf "bench_214/"${BENCHMARKS[i]}"/log.txt"
    error=$(i++ -march=Arria10 --simulator $SIMULATOR "bench_214/"${BENCHMARKS[i]}"/"${BENCHMARKS[i]}".c" &> "bench_214/"${BENCHMARKS[i]}"/log.txt")
    # version changed
    rm -rf "bench_214/"${BENCHMARKS[i]}"/a.prj"
    mv "a.prj" "bench_214/"${BENCHMARKS[i]}
done
