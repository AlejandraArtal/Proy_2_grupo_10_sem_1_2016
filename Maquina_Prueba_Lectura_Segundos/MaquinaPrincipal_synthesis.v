////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: MaquinaPrincipal_synthesis.v
// /___/   /\     Timestamp: Thu Apr 28 22:25:17 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim MaquinaPrincipal.ngc MaquinaPrincipal_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: MaquinaPrincipal.ngc
// Output file	: C:\Users\Alejandra\Desktop\Proyecto2\prueba33\PruebaRTC5\netgen\synthesis\MaquinaPrincipal_synthesis.v
// # of Modules	: 1
// Design Name	: MaquinaPrincipal
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module MaquinaPrincipal (
  reset, clk, alarma_signal, A_D, R_D, W_R, C_S, hsync, vsync, cien, DatoDir, red, green, blue, pixel_x, pixel_y
);
  input reset;
  input clk;
  input alarma_signal;
  output A_D;
  output R_D;
  output W_R;
  output C_S;
  output hsync;
  output vsync;
  output cien;
  inout [7 : 0] DatoDir;
  output [2 : 0] red;
  output [2 : 0] green;
  output [1 : 0] blue;
  output [9 : 0] pixel_x;
  output [9 : 0] pixel_y;
  wire reset_IBUF_0;
  wire cien_OBUF_BUFG_1;
  wire alarma_signal_IBUF_2;
  wire \instance_name/text_top/vga_sync/h_sync_reg_30 ;
  wire \instance_name/text_top/vga_sync/v_sync_reg_31 ;
  wire A_D_OBUF_32;
  wire W_R_OBUF_33;
  wire R_D_OBUF_34;
  wire C_S_OBUF_35;
  wire \state_reg[4]_GND_1_o_Mux_201_o ;
  wire \state_reg[4]_GND_1_o_Mux_205_o ;
  wire \state_reg[4]_GND_1_o_Mux_213_o ;
  wire \state_reg[4]_GND_1_o_Mux_217_o ;
  wire \state_reg[4]_GND_1_o_Mux_225_o ;
  wire \state_reg[4]_GND_1_o_Mux_229_o ;
  wire \state_reg[4]_GND_1_o_Mux_233_o ;
  wire \state_reg[4]_GND_31_o_Mux_244_o ;
  wire \clockdiv/count_0_BUFG_51 ;
  wire \contador[3]_PWR_1_o_LessThan_139_o ;
  wire n0062;
  wire _n0345;
  wire _n0373;
  wire _n0376;
  wire _n0600;
  wire EnableLeer_58;
  wire \state_reg[4]_state_reg[4]_DLATCH_2_q_59 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_6_q_60 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_8_q_61 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_10_q_62 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_12_q_63 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_14_q_64 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_16_q_65 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_22_q_66 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_23_q_67 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_24_q_68 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_26_q_69 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_28_q_70 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_30_q_71 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_32_q_72 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_34_q_73 ;
  wire \state_reg[4]_state_reg[4]_DLATCH_36_q_74 ;
  wire \contador[3]_GND_1_o_OR_636_o ;
  wire \state_reg[4]_PWR_11_o_Mux_204_o ;
  wire _n0581;
  wire \state_reg[4]_PWR_10_o_Mux_202_o ;
  wire \state_reg[4]_PWR_42_o_Mux_246_o ;
  wire _n0499;
  wire _n0401;
  wire _n0518;
  wire CS;
  wire AD;
  wire LecEsc;
  wire \state_reg[4]_PWR_12_o_Mux_206_o ;
  wire WR;
  wire RD;
  wire \state_reg[4]_state_reg[4]_DLATCH_3_q_120 ;
  wire N0;
  wire N1;
  wire reset_inv;
  wire Result;
  wire \state_reg_FSM_FFd1-In1 ;
  wire \state_reg_FSM_FFd5-In ;
  wire \state_reg_FSM_FFd4-In ;
  wire \state_reg_FSM_FFd3-In ;
  wire \state_reg_FSM_FFd2-In ;
  wire \state_reg_FSM_FFd1-In ;
  wire state_reg_FSM_FFd5_135;
  wire state_reg_FSM_FFd4_136;
  wire state_reg_FSM_FFd3_137;
  wire state_reg_FSM_FFd2_138;
  wire state_reg_FSM_FFd1_139;
  wire Mmux_contador_next112;
  wire \state_reg_FSM_FFd5-In21 ;
  wire \state_reg_FSM_FFd3-In2_146 ;
  wire _n06763;
  wire \state_reg_FSM_FFd3-In12 ;
  wire Mmux_CS111;
  wire \state_reg__n0314<2>1_150 ;
  wire \Mmux_state_reg[4]_PWR_12_o_Mux_206_o113 ;
  wire \state_reg_FSM_FFd5-In11 ;
  wire \Mmux_state_reg[4]_PWR_11_o_Mux_204_o11_153 ;
  wire \instance_name/text_top/text_on ;
  wire \instance_name/parpadeo ;
  wire \instance_name/text_top/vga_sync/mod2_reg_229 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr34441 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr34103 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7217_239 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr593411 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr34131 ;
  wire \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>5 ;
  wire \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>21 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr421311 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr485421 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr61111 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr42132 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr76135 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr30332 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr702231_250 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr514 ;
  wire \instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o1 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8031_253 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr346_254 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8043 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr5951 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr70225 ;
  wire \instance_name/text_top/texto/text_on11 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr23112 ;
  wire \instance_name/text_top/texto/instruc_row112 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr761322 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7222_262 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4859 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4210 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr59361 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr116 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr596 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4244 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr2331 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr70223 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4857 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr78_272 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr48121 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr805_274 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7721 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr34211 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7714 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr512 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr70222 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4243 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4856 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr428 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr75_283 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4242 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr2911 ;
  wire \instance_name/text_top/texto/fecha_encabezado2 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr70221 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6111_288 ;
  wire \instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o1 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr30131 ;
  wire \instance_name/text_top/texto/mes1_291 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4831_292 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr74_293 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4855 ;
  wire \instance_name/text_top/texto/instruc_row12_295 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr427 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr59343 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4853 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr765_299 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7041 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr764_301 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr425 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr5941 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4851_304 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7713 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr5933 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr712_307 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7614 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7011 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr5932 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr232_311 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4811_312 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr114 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr422 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr5931 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr731 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr803 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7612 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr482_319 ;
  wire \instance_name/text_top/texto/text_on1 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr302 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr112 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr592 ;
  wire \instance_name/text_top/texto/hora_encabezado1_324 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr111 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr591 ;
  wire \instance_name/text_top/texto/Mmux_font_bit_3_327 ;
  wire \instance_name/text_top/texto/Mmux_font_bit_4_328 ;
  wire \instance_name/text_top/texto/GND_6_o_min_c[7]_AND_138_o_mmx_out ;
  wire \instance_name/text_top/texto/_n4953_330 ;
  wire \instance_name/text_top/texto/font_bit ;
  wire \instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_466_o ;
  wire \instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_465_o ;
  wire \instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_464_o ;
  wire \instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_463_o ;
  wire \instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_462_o ;
  wire \instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o ;
  wire \instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_104_o ;
  wire \instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o ;
  wire \instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_100_o ;
  wire \instance_name/text_top/texto/cronometro_cambio_352 ;
  wire \instance_name/text_top/texto/numerico_hora ;
  wire \instance_name/text_top/texto/cronometro ;
  wire \instance_name/text_top/texto/hora_encabezado ;
  wire \instance_name/text_top/texto/heart ;
  wire \instance_name/text_top/texto/instruc_row3 ;
  wire \instance_name/text_top/texto/instruc_row2 ;
  wire \instance_name/text_top/texto/instruc_row1 ;
  wire \instance_name/text_top/texto/instrucciones ;
  wire \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>_361 ;
  wire \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<1>_362 ;
  wire \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<2>_363 ;
  wire \instance_name/text_top/texto/alarma ;
  wire \instance_name/text_top/texto/mes ;
  wire \instance_name/text_top/texto/year ;
  wire \instance_name/text_top/texto/dia ;
  wire \instance_name/text_top/texto/fecha_encabezado_368 ;
  wire \instance_name/text_top/texto/GND_6_o_cambio_year[7]_AND_27_o ;
  wire \instance_name/text_top/texto/pixel_x[9]_GND_6_o_equal_143_o ;
  wire \instance_name/text_top/texto/_n1793 ;
  wire \instance_name/text_top/texto/pixel_x[9]_PWR_6_o_equal_758_o ;
  wire \instance_name/text_top/texto/cambio_year[7]_GND_6_o_LessThan_145_o ;
  wire \instance_name/text_top/vga_sync/v_sync_next2 ;
  wire \instance_name/text_top/vga_sync/v_end<9>1_383 ;
  wire \instance_name/text_top/vga_sync/Mcount_v_count_reg9 ;
  wire \instance_name/text_top/vga_sync/Mcount_v_count_reg8 ;
  wire \instance_name/text_top/vga_sync/Mcount_v_count_reg7 ;
  wire \instance_name/text_top/vga_sync/Mcount_v_count_reg6 ;
  wire \instance_name/text_top/vga_sync/Mcount_v_count_reg5 ;
  wire \instance_name/text_top/vga_sync/Mcount_v_count_reg4 ;
  wire \instance_name/text_top/vga_sync/Mcount_v_count_reg3 ;
  wire \instance_name/text_top/vga_sync/Mcount_v_count_reg2 ;
  wire \instance_name/text_top/vga_sync/Mcount_v_count_reg1 ;
  wire \instance_name/text_top/vga_sync/Mcount_v_count_reg ;
  wire \instance_name/text_top/vga_sync/v_end_inv ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[9] ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg9 ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[8] ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg8 ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg7 ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[6] ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg6 ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[5] ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg5 ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[4] ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg4 ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[3] ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg3 ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[2] ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg2 ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[1] ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg1 ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[0] ;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg ;
  wire \instance_name/text_top/vga_sync/h_end_inv ;
  wire \instance_name/text_top/vga_sync/h_sync_next ;
  wire \instance_name/text_top/vga_sync/h_end ;
  wire \instance_name/text_top/vga_sync/v_sync_next ;
  wire \instance_name/text_top/vga_sync/v_end ;
  wire \instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ;
  wire \instance_name/text_top/vga_sync/_n0058 ;
  wire N4;
  wire \state_reg_FSM_FFd3-In1_450 ;
  wire \state_reg_FSM_FFd3-In3_451 ;
  wire \state_reg_FSM_FFd3-In4_452 ;
  wire Mmux_CS11;
  wire Mmux_contador_next1121_454;
  wire Mmux_contador_next1122_455;
  wire Mmux_contador_next1123_456;
  wire \state_reg_FSM_FFd5-In1_457 ;
  wire \state_reg_FSM_FFd5-In2_458 ;
  wire \state_reg_FSM_FFd4-In3_459 ;
  wire \state_reg_FSM_FFd4-In4_460 ;
  wire LecEscLogicTrst;
  wire LecEscLogicTrst1_462;
  wire LecEscLogicTrst2_463;
  wire LecEscLogicTrst3_464;
  wire LecEscLogicTrst4;
  wire \Mmux_state_reg[4]_PWR_12_o_Mux_206_o1 ;
  wire \_n0722<4>1 ;
  wire ADLogicTrst1;
  wire ADLogicTrst2_469;
  wire \instance_name/text_top/Fondo/blue_graph<1>1_471 ;
  wire \instance_name/text_top/Fondo/blue_graph<1>2_472 ;
  wire \instance_name/text_top/Fondo/blue_graph<1>3_473 ;
  wire \instance_name/parpadeo3 ;
  wire \instance_name/parpadeo31_475 ;
  wire \instance_name/parpadeo32_476 ;
  wire N10;
  wire N12;
  wire N14;
  wire \instance_name/text_top/Mmux_blue2 ;
  wire \instance_name/text_top/Mmux_blue21_481 ;
  wire N16;
  wire N18;
  wire N20;
  wire N22;
  wire N24;
  wire N26;
  wire N28;
  wire N30;
  wire N32;
  wire \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>11_491 ;
  wire \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>12_492 ;
  wire N36;
  wire N38;
  wire N40;
  wire \instance_name/text_top/texto/Mmux_rom_addr34 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr341_497 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr342_498 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr343_499 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr345 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr348_501 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr349_502 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3410_503 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3411_504 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3413_505 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3414_506 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3415_507 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3416 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3417_509 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3419 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3420_511 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3421_512 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3422_513 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3423_514 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3424_515 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3425 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3426_517 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3428_518 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3429_519 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3430_520 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3431_521 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3432_522 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3433_523 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3434_524 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3435_525 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3436_526 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3437_527 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3438_528 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3439_529 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3440_530 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3441_531 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3442_532 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3443_533 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3444_534 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3445_535 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3446_536 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3447_537 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3448_538 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3449_539 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3450_540 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3451_541 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr3452 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr806_543 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr807_544 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr808_545 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr809_546 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8010_547 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8011_548 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8012_549 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8013_550 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8014_551 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8015_552 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8016_553 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8017_554 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8018_555 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8019_556 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8020_557 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8021_558 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8022_559 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8023 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8025_561 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8026_562 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8027_563 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8028_564 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8029_565 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8030_566 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8032_567 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8033_568 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr8034_569 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr61 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr611_571 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr612_572 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr613_573 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr616 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr617_575 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr618_576 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr619_577 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6110_578 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6112_579 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6113 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6114_581 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6115_582 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6116_583 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6117_584 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6118_585 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6119_586 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6121_587 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6122_588 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6123_589 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6124_590 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6125_591 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6126_592 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6127_593 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6128_594 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6129_595 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6130_596 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6131_597 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6132_598 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6133_599 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr6134_600 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr48 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr481_602 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr483_603 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr484_604 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr485_605 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr486_606 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr487_607 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr488_608 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr489_609 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4810_610 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4812_611 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4813_612 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4814_613 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4815_614 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4816_615 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4817_616 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4818_617 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4819 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4823_619 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4824_620 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4825_621 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4826_622 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4827_623 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4828_624 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4829_625 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4830_626 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4832_627 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4833 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4836 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4838_630 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4839_631 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4840_632 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4841_633 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4842 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4844_635 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4845_636 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4846_637 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4847_638 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4848_639 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4849_640 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4850_641 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4852_642 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4854_643 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr4860 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr76 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr761_646 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr762_647 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr763_648 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr766 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr767_650 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr768_651 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr769_652 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7610_653 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7611_654 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7613 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7618_656 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7619 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7621 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7623_659 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7625_660 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7626_661 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7627 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr72 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr73 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr77_666 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr79_667 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr710_668 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr711_669 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr713_670 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr714_671 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr715_672 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr716 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr717 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr721_675 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr722_676 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr724_677 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr725_678 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr726_679 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr728_680 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr729_681 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7210_682 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7211_683 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7212_684 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7216_685 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7218_686 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7219_687 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7220_688 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7221_689 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7223_690 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7224_691 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7225_692 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7226_693 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7227 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7230 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7232_696 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7233_697 ;
  wire \instance_name/text_top/texto/Mmux_rom_addr7234_698 ;
  wire N42;
  wire N44;
  wire N46;
  wire N47;
  wire N48;
  wire N49;
  wire N50;
  wire N51;
  wire N52;
  wire N53;
  wire \instance_name/divparpadeo/Mcount_m_cy<22>_rt_747 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<21>_rt_748 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<20>_rt_749 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<19>_rt_750 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<18>_rt_751 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<17>_rt_752 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<16>_rt_753 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<15>_rt_754 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<14>_rt_755 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<13>_rt_756 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<12>_rt_757 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<11>_rt_758 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<10>_rt_759 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<9>_rt_760 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<8>_rt_761 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<7>_rt_762 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<6>_rt_763 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<5>_rt_764 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<4>_rt_765 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<3>_rt_766 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<2>_rt_767 ;
  wire \instance_name/divparpadeo/Mcount_m_cy<1>_rt_768 ;
  wire \instance_name/divparpadeo/Mcount_m_xor<23>_rt_769 ;
  wire N62;
  wire N64;
  wire N66;
  wire N68;
  wire N70;
  wire N72;
  wire N74;
  wire N79;
  wire N81;
  wire N83;
  wire N84;
  wire N86;
  wire N87;
  wire N89;
  wire N90;
  wire N92;
  wire N93;
  wire N95;
  wire N96;
  wire N98;
  wire N100;
  wire N102;
  wire N104;
  wire N105;
  wire N107;
  wire N109;
  wire N111;
  wire N113;
  wire N115;
  wire N119;
  wire N120;
  wire N124;
  wire N126;
  wire N130;
  wire N132;
  wire N133;
  wire N135;
  wire N142;
  wire N145;
  wire N146;
  wire N147;
  wire N148;
  wire N149;
  wire N150;
  wire N153;
  wire N155;
  wire \instance_name/text_top/vga_sync/Mcount_h_count_reg_cy<7>_rt_816 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_8_1_817 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_9_1_818 ;
  wire \instance_name/text_top/vga_sync/v_count_reg_5_1_819 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_9_2_820 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_3_1_821 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_4_1_822 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_6_1_823 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_5_1_824 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_7_1_825 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_8_2_826 ;
  wire \instance_name/text_top/vga_sync/v_count_reg_7_1_827 ;
  wire \instance_name/text_top/vga_sync/v_count_reg_5_2_828 ;
  wire \instance_name/text_top/texto/cronometro1_829 ;
  wire \instance_name/text_top/texto/dia1_830 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_7_2_831 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_9_3_832 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_8_3_833 ;
  wire \instance_name/text_top/texto/instruc_row121 ;
  wire \instance_name/text_top/texto/fecha_encabezado1 ;
  wire \instance_name/text_top/texto/mes11_836 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_6_2_837 ;
  wire \instance_name/text_top/texto/hora_encabezado11_838 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_5_2_839 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_4_2_840 ;
  wire \instance_name/text_top/vga_sync/v_count_reg_5_3_841 ;
  wire \instance_name/text_top/texto/cronometro_cambio1 ;
  wire \instance_name/text_top/vga_sync/v_count_reg_7_2_843 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_7_3_844 ;
  wire \instance_name/text_top/vga_sync/h_count_reg_9_4_845 ;
  wire \instance_name/text_top/vga_sync/v_count_reg_4_1_846 ;
  wire \clockdiv/count_0_847 ;
  wire cien_OBUF_848;
  wire N157;
  wire N158;
  wire N159;
  wire N160;
  wire N162;
  wire N164;
  wire N165;
  wire N168;
  wire N170;
  wire N171;
  wire N172;
  wire DatoDirPrev_6_1_860;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ENB_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_RSTB_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_CLKB_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_REGCEB_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIPA<3>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIPA<2>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIPA<1>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<31>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<30>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<29>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<28>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<27>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<26>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<25>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<24>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<23>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<22>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<21>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<20>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<19>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<18>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<17>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<16>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<15>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<14>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<13>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<12>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<11>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<10>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<9>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<8>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRA<2>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRA<1>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRA<0>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<13>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<12>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<11>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<10>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<9>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<8>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<7>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<6>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<5>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<4>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<3>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<2>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<1>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<0>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<31>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<30>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<29>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<28>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<27>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<26>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<25>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<24>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<23>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<22>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<21>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<20>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<19>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<18>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<17>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<16>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<15>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<14>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<13>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<12>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<11>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<10>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<9>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<8>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<7>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<6>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<5>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<4>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<3>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<2>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<1>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<0>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPA<3>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPA<2>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPA<1>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPA<0>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIPB<3>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIPB<2>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIPB<1>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIPB<0>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPB<3>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPB<2>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPB<1>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPB<0>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<31>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<30>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<29>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<28>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<27>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<26>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<25>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<24>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<23>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<22>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<21>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<20>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<19>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<18>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<17>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<16>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<15>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<14>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<13>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<12>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<11>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<10>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<9>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<8>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<7>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<6>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<5>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<4>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<3>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<2>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<1>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<0>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_WEB<3>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_WEB<2>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_WEB<1>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_WEB<0>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<31>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<30>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<29>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<28>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<27>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<26>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<25>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<24>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<23>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<22>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<21>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<20>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<19>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<18>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<17>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<16>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<15>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<14>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<13>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<12>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<11>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<10>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<9>_UNCONNECTED ;
  wire \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<8>_UNCONNECTED ;
  wire [9 : 0] \instance_name/text_top/vga_sync/h_count_reg ;
  wire [9 : 0] \instance_name/text_top/vga_sync/v_count_reg ;
  wire [2 : 0] \instance_name/red_reg ;
  wire [2 : 0] \instance_name/green_reg ;
  wire [1 : 1] \instance_name/blue_reg ;
  wire [6 : 0] DatoDirPrev;
  wire [7 : 0] DatoDirIn;
  wire [6 : 0] DatoDirg;
  wire [7 : 0] DatoSegT;
  wire [3 : 0] contador_next;
  wire [3 : 0] contador;
  wire [22 : 0] \instance_name/divparpadeo/Mcount_m_cy ;
  wire [0 : 0] \instance_name/divparpadeo/Mcount_m_lut ;
  wire [23 : 0] \instance_name/Result ;
  wire [23 : 0] \instance_name/divparpadeo/m ;
  wire [0 : 0] \instance_name/text_top/blue_graph ;
  wire [1 : 1] \instance_name/blue_next ;
  wire [2 : 0] \instance_name/green_next ;
  wire [2 : 0] \instance_name/red_next ;
  wire [10 : 0] \instance_name/text_top/texto/rom_addr ;
  wire [7 : 0] \instance_name/text_top/texto/font_word ;
  wire [9 : 0] \instance_name/text_top/vga_sync/Mcount_v_count_reg_lut ;
  wire [8 : 0] \instance_name/text_top/vga_sync/Mcount_v_count_reg_cy ;
  wire [8 : 0] \instance_name/text_top/vga_sync/Mcount_h_count_reg_cy ;
  wire [1 : 1] \instance_name/text_top/Fondo/blue_graph ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_3_q  (
    .D(\state_reg[4]_PWR_12_o_Mux_206_o ),
    .G(\state_reg[4]_PWR_11_o_Mux_204_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_3_q_120 )
  );
  FDC   R_D_4 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(RD),
    .Q(R_D_OBUF_34)
  );
  FDC   W_R_5 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(WR),
    .Q(W_R_OBUF_33)
  );
  FDC   C_S_6 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(CS),
    .Q(C_S_OBUF_35)
  );
  FDC   contador_0 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(contador_next[0]),
    .Q(contador[0])
  );
  FDC   contador_1 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(contador_next[1]),
    .Q(contador[1])
  );
  FDC   contador_2 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(contador_next[2]),
    .Q(contador[2])
  );
  FDC   contador_3 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(contador_next[3]),
    .Q(contador[3])
  );
  LD   EnableLeer (
    .D(\state_reg[4]_GND_1_o_Mux_201_o ),
    .G(\state_reg[4]_PWR_10_o_Mux_202_o ),
    .Q(EnableLeer_58)
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_2_q  (
    .D(\state_reg[4]_GND_1_o_Mux_205_o ),
    .G(\state_reg[4]_PWR_11_o_Mux_204_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_2_q_59 )
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_6_q  (
    .D(\state_reg[4]_GND_1_o_Mux_213_o ),
    .G(\state_reg[4]_PWR_11_o_Mux_204_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_6_q_60 )
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_12_q  (
    .D(\state_reg[4]_GND_1_o_Mux_225_o ),
    .G(\state_reg[4]_PWR_11_o_Mux_204_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_12_q_63 )
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_8_q  (
    .D(\state_reg[4]_GND_1_o_Mux_217_o ),
    .G(\state_reg[4]_PWR_11_o_Mux_204_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_8_q_61 )
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_10_q  (
    .D(\state_reg__n0314<2>1_150 ),
    .G(\state_reg[4]_PWR_11_o_Mux_204_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_10_q_62 )
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_14_q  (
    .D(\state_reg[4]_GND_1_o_Mux_229_o ),
    .G(\state_reg[4]_PWR_11_o_Mux_204_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_14_q_64 )
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_16_q  (
    .D(\state_reg[4]_GND_1_o_Mux_233_o ),
    .G(\state_reg[4]_PWR_11_o_Mux_204_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_16_q_65 )
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_23_q  (
    .D(\state_reg[4]_PWR_42_o_Mux_246_o ),
    .G(\state_reg[4]_GND_31_o_Mux_244_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 )
  );
  FDC   A_D_20 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(AD),
    .Q(A_D_OBUF_32)
  );
  FDE   DatoDirPrev_0 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(reset_inv),
    .D(DatoDirg[0]),
    .Q(DatoDirPrev[0])
  );
  FDE   DatoDirPrev_1 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(reset_inv),
    .D(DatoDirg[1]),
    .Q(DatoDirPrev[1])
  );
  FDE   DatoDirPrev_2 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(reset_inv),
    .D(DatoDirg[2]),
    .Q(DatoDirPrev[2])
  );
  FDE   DatoDirPrev_3 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(reset_inv),
    .D(DatoDirg[3]),
    .Q(DatoDirPrev[3])
  );
  FDE   DatoDirPrev_4 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(reset_inv),
    .D(DatoDirg[4]),
    .Q(DatoDirPrev[4])
  );
  FDE   DatoDirPrev_5 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(reset_inv),
    .D(DatoDirg[5]),
    .Q(DatoDirPrev[5])
  );
  FDE   DatoDirPrev_6 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(reset_inv),
    .D(DatoDirg[6]),
    .Q(DatoDirPrev[6])
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_22_q  (
    .D(DatoDirIn[7]),
    .G(\state_reg[4]_GND_31_o_Mux_244_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 )
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_24_q  (
    .D(DatoDirIn[6]),
    .G(\state_reg[4]_GND_31_o_Mux_244_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 )
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_26_q  (
    .D(DatoDirIn[5]),
    .G(\state_reg[4]_GND_31_o_Mux_244_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 )
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_32_q  (
    .D(DatoDirIn[2]),
    .G(\state_reg[4]_GND_31_o_Mux_244_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 )
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_28_q  (
    .D(DatoDirIn[4]),
    .G(\state_reg[4]_GND_31_o_Mux_244_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 )
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_30_q  (
    .D(DatoDirIn[3]),
    .G(\state_reg[4]_GND_31_o_Mux_244_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 )
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_34_q  (
    .D(DatoDirIn[1]),
    .G(\state_reg[4]_GND_31_o_Mux_244_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 )
  );
  LD   \state_reg[4]_state_reg[4]_DLATCH_36_q  (
    .D(DatoDirIn[0]),
    .G(\state_reg[4]_GND_31_o_Mux_244_o ),
    .Q(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \clockdiv/count_0  (
    .C(cien_OBUF_BUFG_1),
    .D(Result),
    .Q(\clockdiv/count_0_847 )
  );
  FDC   state_reg_FSM_FFd5 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(\state_reg_FSM_FFd5-In ),
    .Q(state_reg_FSM_FFd5_135)
  );
  FDC   state_reg_FSM_FFd4 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(\state_reg_FSM_FFd4-In ),
    .Q(state_reg_FSM_FFd4_136)
  );
  FDC   state_reg_FSM_FFd1 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(\state_reg_FSM_FFd1-In ),
    .Q(state_reg_FSM_FFd1_139)
  );
  FDC   state_reg_FSM_FFd3 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(\state_reg_FSM_FFd3-In ),
    .Q(state_reg_FSM_FFd3_137)
  );
  FDC   state_reg_FSM_FFd2 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(\state_reg_FSM_FFd2-In ),
    .Q(state_reg_FSM_FFd2_138)
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<23>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [22]),
    .LI(\instance_name/divparpadeo/Mcount_m_xor<23>_rt_769 ),
    .O(\instance_name/Result [23])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<22>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [21]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<22>_rt_747 ),
    .O(\instance_name/Result [22])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<22>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [21]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<22>_rt_747 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [22])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<21>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [20]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<21>_rt_748 ),
    .O(\instance_name/Result [21])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<21>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [20]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<21>_rt_748 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [21])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<20>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [19]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<20>_rt_749 ),
    .O(\instance_name/Result [20])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<20>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [19]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<20>_rt_749 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [20])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<19>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [18]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<19>_rt_750 ),
    .O(\instance_name/Result [19])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<19>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [18]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<19>_rt_750 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [19])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<18>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [17]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<18>_rt_751 ),
    .O(\instance_name/Result [18])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<18>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [17]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<18>_rt_751 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [18])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<17>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [16]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<17>_rt_752 ),
    .O(\instance_name/Result [17])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<17>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [16]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<17>_rt_752 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [17])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<16>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [15]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<16>_rt_753 ),
    .O(\instance_name/Result [16])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<16>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [15]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<16>_rt_753 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [16])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<15>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [14]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<15>_rt_754 ),
    .O(\instance_name/Result [15])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<15>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [14]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<15>_rt_754 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [15])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<14>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [13]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<14>_rt_755 ),
    .O(\instance_name/Result [14])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<14>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [13]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<14>_rt_755 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [14])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<13>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [12]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<13>_rt_756 ),
    .O(\instance_name/Result [13])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<13>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [12]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<13>_rt_756 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [13])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<12>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [11]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<12>_rt_757 ),
    .O(\instance_name/Result [12])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<12>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [11]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<12>_rt_757 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [12])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<11>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [10]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<11>_rt_758 ),
    .O(\instance_name/Result [11])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<11>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [10]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<11>_rt_758 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [11])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<10>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [9]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<10>_rt_759 ),
    .O(\instance_name/Result [10])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<10>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [9]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<10>_rt_759 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [10])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<9>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [8]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<9>_rt_760 ),
    .O(\instance_name/Result [9])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<9>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [8]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<9>_rt_760 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [9])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<8>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [7]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<8>_rt_761 ),
    .O(\instance_name/Result [8])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<8>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [7]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<8>_rt_761 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [8])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<7>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [6]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<7>_rt_762 ),
    .O(\instance_name/Result [7])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<7>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [6]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<7>_rt_762 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [7])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<6>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [5]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<6>_rt_763 ),
    .O(\instance_name/Result [6])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<6>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [5]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<6>_rt_763 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [6])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<5>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [4]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<5>_rt_764 ),
    .O(\instance_name/Result [5])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<5>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [4]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<5>_rt_764 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [5])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<4>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [3]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<4>_rt_765 ),
    .O(\instance_name/Result [4])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<4>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [3]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<4>_rt_765 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [4])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<3>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [2]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<3>_rt_766 ),
    .O(\instance_name/Result [3])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<3>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [2]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<3>_rt_766 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [3])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<2>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [1]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<2>_rt_767 ),
    .O(\instance_name/Result [2])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<2>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [1]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<2>_rt_767 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [2])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<1>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [0]),
    .LI(\instance_name/divparpadeo/Mcount_m_cy<1>_rt_768 ),
    .O(\instance_name/Result [1])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<1>  (
    .CI(\instance_name/divparpadeo/Mcount_m_cy [0]),
    .DI(N1),
    .S(\instance_name/divparpadeo/Mcount_m_cy<1>_rt_768 ),
    .O(\instance_name/divparpadeo/Mcount_m_cy [1])
  );
  XORCY   \instance_name/divparpadeo/Mcount_m_xor<0>  (
    .CI(N1),
    .LI(\instance_name/divparpadeo/Mcount_m_lut [0]),
    .O(\instance_name/Result [0])
  );
  MUXCY   \instance_name/divparpadeo/Mcount_m_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\instance_name/divparpadeo/Mcount_m_lut [0]),
    .O(\instance_name/divparpadeo/Mcount_m_cy [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_23  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [23]),
    .Q(\instance_name/divparpadeo/m [23])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_22  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [22]),
    .Q(\instance_name/divparpadeo/m [22])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_21  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [21]),
    .Q(\instance_name/divparpadeo/m [21])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_20  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [20]),
    .Q(\instance_name/divparpadeo/m [20])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_19  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [19]),
    .Q(\instance_name/divparpadeo/m [19])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_18  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [18]),
    .Q(\instance_name/divparpadeo/m [18])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_17  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [17]),
    .Q(\instance_name/divparpadeo/m [17])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_16  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [16]),
    .Q(\instance_name/divparpadeo/m [16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_15  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [15]),
    .Q(\instance_name/divparpadeo/m [15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_14  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [14]),
    .Q(\instance_name/divparpadeo/m [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_13  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [13]),
    .Q(\instance_name/divparpadeo/m [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_12  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [12]),
    .Q(\instance_name/divparpadeo/m [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_11  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [11]),
    .Q(\instance_name/divparpadeo/m [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_10  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [10]),
    .Q(\instance_name/divparpadeo/m [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_9  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [9]),
    .Q(\instance_name/divparpadeo/m [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_8  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [8]),
    .Q(\instance_name/divparpadeo/m [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_7  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [7]),
    .Q(\instance_name/divparpadeo/m [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_6  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [6]),
    .Q(\instance_name/divparpadeo/m [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_5  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [5]),
    .Q(\instance_name/divparpadeo/m [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_4  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [4]),
    .Q(\instance_name/divparpadeo/m [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_3  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [3]),
    .Q(\instance_name/divparpadeo/m [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_2  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [2]),
    .Q(\instance_name/divparpadeo/m [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [1]),
    .Q(\instance_name/divparpadeo/m [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \instance_name/divparpadeo/m_0  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .D(\instance_name/Result [0]),
    .Q(\instance_name/divparpadeo/m [0])
  );
  FDE   \instance_name/red_reg_2  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .D(\instance_name/red_next [2]),
    .Q(\instance_name/red_reg [2])
  );
  FDE   \instance_name/red_reg_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .D(\instance_name/red_next [1]),
    .Q(\instance_name/red_reg [1])
  );
  FDE   \instance_name/red_reg_0  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .D(\instance_name/red_next [0]),
    .Q(\instance_name/red_reg [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \instance_name/green_reg_2  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .D(\instance_name/green_next [2]),
    .Q(\instance_name/green_reg [2])
  );
  FDE #(
    .INIT ( 1'b1 ))
  \instance_name/green_reg_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .D(\instance_name/green_next [1]),
    .Q(\instance_name/green_reg [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \instance_name/green_reg_0  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .D(\instance_name/green_next [0]),
    .Q(\instance_name/green_reg [0])
  );
  FDE   \instance_name/blue_reg_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .D(\instance_name/blue_next [1]),
    .Q(\instance_name/blue_reg [1])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \instance_name/text_top/texto/Mmux_font_bit_3  (
    .I0(\instance_name/text_top/texto/font_word [4]),
    .I1(\instance_name/text_top/texto/font_word [5]),
    .I2(\instance_name/text_top/texto/font_word [7]),
    .I3(\instance_name/text_top/texto/font_word [6]),
    .I4(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>_361 ),
    .I5(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<1>_362 ),
    .O(\instance_name/text_top/texto/Mmux_font_bit_3_327 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \instance_name/text_top/texto/Mmux_font_bit_4  (
    .I0(\instance_name/text_top/texto/font_word [0]),
    .I1(\instance_name/text_top/texto/font_word [1]),
    .I2(\instance_name/text_top/texto/font_word [3]),
    .I3(\instance_name/text_top/texto/font_word [2]),
    .I4(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>_361 ),
    .I5(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<1>_362 ),
    .O(\instance_name/text_top/texto/Mmux_font_bit_4_328 )
  );
  MUXF7   \instance_name/text_top/texto/Mmux_font_bit_2_f7  (
    .I0(\instance_name/text_top/texto/Mmux_font_bit_4_328 ),
    .I1(\instance_name/text_top/texto/Mmux_font_bit_3_327 ),
    .S(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<2>_363 ),
    .O(\instance_name/text_top/texto/font_bit )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_9  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg9 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg [9])
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_8  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg8 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg [8])
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_7  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg7 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg [7])
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_6  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg6 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg [6])
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_5  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg5 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg [5])
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_4  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg4 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg [4])
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_3  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg3 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg [3])
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_2  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg2 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg [2])
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg1 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg [1])
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_0  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg [0])
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_9  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg9 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg [9])
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_8  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg8 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg [8])
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_7  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg7 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg [7])
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_6  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg6 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg [6])
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_5  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg5 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg [5])
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_4  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg4 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg [4])
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_3  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg3 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg [3])
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_2  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg2 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg [2])
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg1 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg [1])
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_0  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg [0])
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_xor<9>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [8]),
    .LI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [9]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg9 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_v_count_reg_lut<9>  (
    .I0(\instance_name/text_top/vga_sync/v_end ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [9]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [9])
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_xor<8>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [7]),
    .LI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [8]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg8 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_cy<8>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [7]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [8]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_v_count_reg_lut<8>  (
    .I0(\instance_name/text_top/vga_sync/v_end ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [8])
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_xor<7>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [6]),
    .LI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [7]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg7 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_cy<7>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [6]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [7]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_v_count_reg_lut<7>  (
    .I0(\instance_name/text_top/vga_sync/v_end ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [7])
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_xor<6>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [5]),
    .LI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [6]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg6 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_cy<6>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [5]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [6]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_v_count_reg_lut<6>  (
    .I0(\instance_name/text_top/vga_sync/v_end ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [6])
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_xor<5>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [4]),
    .LI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [5]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg5 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_cy<5>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [4]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [5]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_v_count_reg_lut<5>  (
    .I0(\instance_name/text_top/vga_sync/v_end ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [5])
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_xor<4>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [3]),
    .LI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [4]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg4 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_cy<4>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [3]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [4]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_v_count_reg_lut<4>  (
    .I0(\instance_name/text_top/vga_sync/v_end ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [4])
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_xor<3>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [2]),
    .LI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [3]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg3 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_cy<3>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [2]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [3]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_v_count_reg_lut<3>  (
    .I0(\instance_name/text_top/vga_sync/v_end ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [3]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [3])
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_xor<2>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [1]),
    .LI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [2]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg2 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_cy<2>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [1]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [2]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_v_count_reg_lut<2>  (
    .I0(\instance_name/text_top/vga_sync/v_end ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [2]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [2])
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_xor<1>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [0]),
    .LI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [1]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg1 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_cy<1>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [0]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [1]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_v_count_reg_lut<1>  (
    .I0(\instance_name/text_top/vga_sync/v_end ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [1]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [1])
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_xor<0>  (
    .CI(\instance_name/text_top/vga_sync/v_end_inv ),
    .LI(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [0]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_v_count_reg_cy<0>  (
    .CI(\instance_name/text_top/vga_sync/v_end_inv ),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [0]),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_v_count_reg_lut<0>  (
    .I0(\instance_name/text_top/vga_sync/v_end ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [0]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_v_count_reg_lut [0])
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_xor<9>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [8]),
    .LI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[9] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg9 )
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_xor<8>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [7]),
    .LI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[8] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg8 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_cy<8>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [7]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[8] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [8])
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_xor<7>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [6]),
    .LI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy<7>_rt_816 ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg7 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_cy<7>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [6]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy<7>_rt_816 ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [7])
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_xor<6>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [5]),
    .LI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[6] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg6 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_cy<6>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [5]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[6] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut<6>  (
    .I0(\instance_name/text_top/vga_sync/h_end ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[6] )
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_xor<5>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [4]),
    .LI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[5] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg5 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_cy<5>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [4]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[5] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut<5>  (
    .I0(\instance_name/text_top/vga_sync/h_end ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[5] )
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_xor<4>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [3]),
    .LI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[4] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg4 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_cy<4>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [3]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[4] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut<4>  (
    .I0(\instance_name/text_top/vga_sync/h_end ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[4] )
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_xor<3>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [2]),
    .LI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[3] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg3 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_cy<3>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [2]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[3] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut<3>  (
    .I0(\instance_name/text_top/vga_sync/h_end ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[3] )
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_xor<2>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [1]),
    .LI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[2] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg2 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_cy<2>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [1]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[2] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut<2>  (
    .I0(\instance_name/text_top/vga_sync/h_end ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [2]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[2] )
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_xor<1>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [0]),
    .LI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[1] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg1 )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_cy<1>  (
    .CI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [0]),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[1] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut<1>  (
    .I0(\instance_name/text_top/vga_sync/h_end ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [1]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[1] )
  );
  XORCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_xor<0>  (
    .CI(\instance_name/text_top/vga_sync/h_end_inv ),
    .LI(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[0] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg )
  );
  MUXCY   \instance_name/text_top/vga_sync/Mcount_h_count_reg_cy<0>  (
    .CI(\instance_name/text_top/vga_sync/h_end_inv ),
    .DI(N1),
    .S(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[0] ),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut<0>  (
    .I0(\instance_name/text_top/vga_sync/h_end ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [0]),
    .I2(N1),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[0] )
  );
  FDC   \instance_name/text_top/vga_sync/h_sync_reg  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/h_sync_next ),
    .Q(\instance_name/text_top/vga_sync/h_sync_reg_30 )
  );
  FDC   \instance_name/text_top/vga_sync/v_sync_reg  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/v_sync_next ),
    .Q(\instance_name/text_top/vga_sync/v_sync_reg_31 )
  );
  FDC   \instance_name/text_top/vga_sync/mod2_reg  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/_n0058 ),
    .Q(\instance_name/text_top/vga_sync/mod2_reg_229 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \contador[3]_PWR_1_o_LessThan_139_o1  (
    .I0(contador[2]),
    .I1(contador[3]),
    .O(\contador[3]_PWR_1_o_LessThan_139_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_DatoDirIn<7>11  (
    .I0(EnableLeer_58),
    .I1(N46),
    .O(DatoDirIn[7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_DatoDirIn<4>11  (
    .I0(EnableLeer_58),
    .I1(N49),
    .O(DatoDirIn[4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_DatoDirIn<6>11  (
    .I0(EnableLeer_58),
    .I1(N47),
    .O(DatoDirIn[6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_DatoDirIn<5>11  (
    .I0(EnableLeer_58),
    .I1(N48),
    .O(DatoDirIn[5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_DatoDirIn<1>11  (
    .I0(EnableLeer_58),
    .I1(N52),
    .O(DatoDirIn[1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_DatoDirIn<3>11  (
    .I0(EnableLeer_58),
    .I1(N50),
    .O(DatoDirIn[3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_DatoDirIn<2>11  (
    .I0(EnableLeer_58),
    .I1(N51),
    .O(DatoDirIn[2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_DatoDirIn<0>11  (
    .I0(EnableLeer_58),
    .I1(N53),
    .O(DatoDirIn[0])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  Mmux_contador_next31 (
    .I0(contador[0]),
    .I1(Mmux_contador_next112),
    .O(contador_next[0])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoDirg<6>1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_3_q_120 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_2_q_59 ),
    .O(DatoDirg[6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoDirg<5>LogicTrst1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_3_q_120 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_6_q_60 ),
    .O(DatoDirg[5])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoDirg<4>LogicTrst1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_3_q_120 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_8_q_61 ),
    .O(DatoDirg[4])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoDirg<3>LogicTrst1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_3_q_120 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_10_q_62 ),
    .O(DatoDirg[3])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoDirg<2>LogicTrst1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_3_q_120 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_12_q_63 ),
    .O(DatoDirg[2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoDirg<1>LogicTrst1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_3_q_120 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_14_q_64 ),
    .O(DatoDirg[1])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoDirg<0>LogicTrst1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_3_q_120 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_16_q_65 ),
    .O(DatoDirg[0])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoSegT<7>LogicTrst1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .O(DatoSegT[7])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoSegT<6>LogicTrst1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .O(DatoSegT[6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoSegT<5>LogicTrst1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .O(DatoSegT[5])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoSegT<4>LogicTrst1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .O(DatoSegT[4])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoSegT<3>LogicTrst1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .O(DatoSegT[3])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoSegT<2>LogicTrst1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .O(DatoSegT[2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoSegT<1>LogicTrst1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .O(DatoSegT[1])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \DatoSegT<0>LogicTrst1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 ),
    .O(DatoSegT[0])
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \contador[3]_GND_1_o_OR_636_o1  (
    .I0(contador[2]),
    .I1(contador[1]),
    .I2(contador[3]),
    .O(\contador[3]_GND_1_o_OR_636_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \state_reg_FSM_FFd5-In211  (
    .I0(state_reg_FSM_FFd2_138),
    .I1(state_reg_FSM_FFd3_137),
    .I2(state_reg_FSM_FFd1_139),
    .O(\state_reg_FSM_FFd5-In21 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \state_reg_FSM_FFd3-In21  (
    .I0(state_reg_FSM_FFd1_139),
    .I1(state_reg_FSM_FFd5_135),
    .I2(state_reg_FSM_FFd4_136),
    .O(\state_reg_FSM_FFd3-In2_146 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  _n067631 (
    .I0(state_reg_FSM_FFd2_138),
    .I1(state_reg_FSM_FFd1_139),
    .I2(state_reg_FSM_FFd3_137),
    .O(_n06763)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF0888 ))
  \state_reg_FSM_FFd2-In1  (
    .I0(\state_reg_FSM_FFd1-In1 ),
    .I1(state_reg_FSM_FFd3_137),
    .I2(\contador[3]_GND_1_o_OR_636_o ),
    .I3(\contador[3]_PWR_1_o_LessThan_139_o ),
    .I4(state_reg_FSM_FFd1_139),
    .I5(state_reg_FSM_FFd2_138),
    .O(\state_reg_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \state_reg__n0314<9>1  (
    .I0(state_reg_FSM_FFd1_139),
    .I1(state_reg_FSM_FFd3_137),
    .I2(state_reg_FSM_FFd4_136),
    .I3(state_reg_FSM_FFd5_135),
    .O(\state_reg[4]_GND_31_o_Mux_244_o )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  Mmux_contador_next61 (
    .I0(Mmux_contador_next112),
    .I1(contador[0]),
    .I2(contador[1]),
    .O(contador_next[1])
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  \contador[3]_GND_1_o_LessThan_182_o1  (
    .I0(contador[3]),
    .I1(contador[1]),
    .I2(contador[2]),
    .O(LecEscLogicTrst3_464)
  );
  LUT4 #(
    .INIT ( 16'h15FF ))
  n00621 (
    .I0(contador[2]),
    .I1(contador[1]),
    .I2(contador[0]),
    .I3(contador[3]),
    .O(n0062)
  );
  LUT6 #(
    .INIT ( 64'h11011505BBABBFAF ))
  \Mmux_state_reg[4]_PWR_42_o_Mux_246_o11  (
    .I0(_n0345),
    .I1(state_reg_FSM_FFd3_137),
    .I2(\state_reg_FSM_FFd3-In2_146 ),
    .I3(state_reg_FSM_FFd2_138),
    .I4(\Mmux_state_reg[4]_PWR_12_o_Mux_206_o113 ),
    .I5(LecEscLogicTrst3_464),
    .O(\state_reg[4]_PWR_42_o_Mux_246_o )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \Mmux_state_reg[4]_PWR_12_o_Mux_206_o1131  (
    .I0(state_reg_FSM_FFd5_135),
    .I1(state_reg_FSM_FFd4_136),
    .I2(state_reg_FSM_FFd1_139),
    .O(\Mmux_state_reg[4]_PWR_12_o_Mux_206_o113 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \state_reg_FSM_FFd5-In111  (
    .I0(state_reg_FSM_FFd3_137),
    .I1(state_reg_FSM_FFd1_139),
    .I2(state_reg_FSM_FFd2_138),
    .O(\state_reg_FSM_FFd5-In11 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF011101110111 ))
  \Mmux_state_reg[4]_PWR_11_o_Mux_204_o11  (
    .I0(_n0345),
    .I1(\state_reg_FSM_FFd3-In2_146 ),
    .I2(state_reg_FSM_FFd3_137),
    .I3(\Mmux_state_reg[4]_PWR_12_o_Mux_206_o113 ),
    .I4(LecEscLogicTrst3_464),
    .I5(\Mmux_state_reg[4]_PWR_11_o_Mux_204_o11_153 ),
    .O(\state_reg[4]_PWR_11_o_Mux_204_o )
  );
  LUT5 #(
    .INIT ( 32'h0004144A ))
  \_n0401<4>1  (
    .I0(state_reg_FSM_FFd1_139),
    .I1(state_reg_FSM_FFd2_138),
    .I2(state_reg_FSM_FFd3_137),
    .I3(state_reg_FSM_FFd4_136),
    .I4(state_reg_FSM_FFd5_135),
    .O(_n0401)
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \_n0345<4>1  (
    .I0(state_reg_FSM_FFd3_137),
    .I1(state_reg_FSM_FFd5_135),
    .I2(state_reg_FSM_FFd4_136),
    .I3(state_reg_FSM_FFd1_139),
    .O(_n0345)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \_n0376<4>1  (
    .I0(state_reg_FSM_FFd4_136),
    .I1(state_reg_FSM_FFd5_135),
    .I2(state_reg_FSM_FFd3_137),
    .I3(state_reg_FSM_FFd1_139),
    .O(_n0376)
  );
  LUT4 #(
    .INIT ( 16'h0220 ))
  \state_reg__n0314<0>1  (
    .I0(state_reg_FSM_FFd1_139),
    .I1(state_reg_FSM_FFd5_135),
    .I2(state_reg_FSM_FFd3_137),
    .I3(state_reg_FSM_FFd4_136),
    .O(\state_reg[4]_GND_1_o_Mux_201_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFB290F6F6 ))
  \_n0499<4>1  (
    .I0(state_reg_FSM_FFd5_135),
    .I1(state_reg_FSM_FFd4_136),
    .I2(_n06763),
    .I3(\state_reg_FSM_FFd5-In11 ),
    .I4(\state_reg_FSM_FFd5-In21 ),
    .I5(_n0373),
    .O(_n0499)
  );
  LUT4 #(
    .INIT ( 16'h1444 ))
  Mmux_contador_next91 (
    .I0(Mmux_contador_next112),
    .I1(contador[2]),
    .I2(contador[0]),
    .I3(contador[1]),
    .O(contador_next[2])
  );
  LUT5 #(
    .INIT ( 32'h000078F0 ))
  Mmux_contador_next121 (
    .I0(contador[0]),
    .I1(contador[1]),
    .I2(contador[3]),
    .I3(contador[2]),
    .I4(Mmux_contador_next112),
    .O(contador_next[3])
  );
  LUT5 #(
    .INIT ( 32'h00000400 ))
  \_n0600<4>1  (
    .I0(state_reg_FSM_FFd4_136),
    .I1(state_reg_FSM_FFd5_135),
    .I2(state_reg_FSM_FFd1_139),
    .I3(state_reg_FSM_FFd3_137),
    .I4(state_reg_FSM_FFd2_138),
    .O(_n0600)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFEC ))
  \instance_name/text_top/texto/text_on2  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr4244 ),
    .I1(\instance_name/text_top/texto/heart ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr111 ),
    .I3(\instance_name/text_top/texto/alarma ),
    .I4(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .I5(\instance_name/text_top/texto/text_on1 ),
    .O(\instance_name/text_top/text_on )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \instance_name/text_top/texto/mes11  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_9_1_818 ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg_5_1_819 ),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [9]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .O(\instance_name/text_top/texto/mes1_291 )
  );
  LUT6 #(
    .INIT ( 64'h00E0004000000000 ))
  \instance_name/text_top/texto/year1  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_6_2_837 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_7_2_831 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg_8_3_833 ),
    .I3(\instance_name/text_top/vga_sync/v_count_reg_7_2_843 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr593411 ),
    .I5(\instance_name/text_top/texto/mes11_836 ),
    .O(\instance_name/text_top/texto/year )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \instance_name/text_top/texto/mes1  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg_7_2_843 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_8_3_833 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg_7_2_831 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4811_312 ),
    .I4(\instance_name/text_top/texto/mes11_836 ),
    .O(\instance_name/text_top/texto/mes )
  );
  LUT6 #(
    .INIT ( 64'h2020080000000000 ))
  \instance_name/text_top/texto/cronometro1  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_9_4_845 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr59343 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg_7_3_844 ),
    .I5(\instance_name/text_top/texto/fecha_encabezado2 ),
    .O(\instance_name/text_top/texto/cronometro )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \instance_name/text_top/texto/Mmux_rom_addr42441  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4244 )
  );
  LUT3 #(
    .INIT ( 8'h7A ))
  \instance_name/text_top/texto/Mmux_rom_addr48111  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_6_1_823 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_4_1_822 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg_5_1_824 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4811_312 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \instance_name/text_top/texto/Mmux_rom_addr4221  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr422 )
  );
  LUT5 #(
    .INIT ( 32'h55555556 ))
  \instance_name/text_top/texto/hora_encabezado11  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_8_1_817 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_7_1_825 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg_6_1_823 ),
    .I3(\instance_name/text_top/vga_sync/h_count_reg_5_1_824 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg_4_1_822 ),
    .O(\instance_name/text_top/texto/hora_encabezado1_324 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFE0FFE0F0 ))
  \instance_name/text_top/texto/Mmux_rom_addr1141  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>21 ),
    .I3(\instance_name/text_top/texto/instruc_row12_295 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr112 ),
    .I5(\instance_name/text_top/texto/text_on11 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr114 )
  );
  LUT5 #(
    .INIT ( 32'h40004002 ))
  \instance_name/text_top/texto/Mmux_rom_addr1111  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr111 )
  );
  LUT6 #(
    .INIT ( 64'h0000000040000001 ))
  \instance_name/text_top/texto/heart1  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I4(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I5(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .O(\instance_name/text_top/texto/heart )
  );
  LUT5 #(
    .INIT ( 32'h0000009F ))
  \instance_name/text_top/texto/Mmux_rom_addr5961  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/instruc_row121 ),
    .I3(\instance_name/text_top/texto/mes ),
    .I4(\instance_name/text_top/texto/year ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr596 )
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \instance_name/text_top/texto/Mmux_rom_addr59411  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr5941 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \instance_name/text_top/texto/Mmux_rom_addr344411  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr34441 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \instance_name/text_top/texto/fecha_encabezado121  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8043 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \instance_name/text_top/texto/Mmux_rom_addr72171  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4856 ),
    .I2(\instance_name/text_top/texto/mes ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7217_239 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \instance_name/text_top/texto/Mmux_rom_addr8062111  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr76135 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \instance_name/text_top/texto/Mmux_rom_addr5934111  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_7_1_825 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_5_1_824 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg_4_1_822 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr593411 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \instance_name/text_top/texto/Mmux_rom_addr806111  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3421_512 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \instance_name/text_top/texto/Mmux_rom_addr48612111  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr427 )
  );
  LUT3 #(
    .INIT ( 8'hE0 ))
  \instance_name/text_top/texto/Mmux_rom_addr3021  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr302 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \instance_name/text_top/texto/Mmux_rom_addr7613221  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr761322 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \instance_name/text_top/texto/Mmux_rom_addr48511  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I1(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4851_304 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \instance_name/text_top/texto/Mmux_rom_addr421321  (
    .I0(\instance_name/text_top/texto/heart ),
    .I1(\instance_name/text_top/texto/alarma ),
    .I2(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr42132 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \instance_name/text_top/texto/Mmux_rom_addr781  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/texto/instrucciones ),
    .I2(\instance_name/text_top/texto/dia ),
    .I3(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr78_272 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \instance_name/text_top/texto/Mmux_rom_addr772411  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4242 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF080008000800 ))
  \instance_name/text_top/texto/Mmux_rom_addr8032  (
    .I0(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr7713 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr8031_253 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr7011 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr78_272 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr803 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \instance_name/text_top/texto/Mmux_rom_addr80311  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8031_253 )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \instance_name/text_top/texto/Mmux_rom_addr3461  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr346_254 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \instance_name/text_top/texto/text_on111  (
    .I0(\instance_name/text_top/texto/dia ),
    .I1(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .O(\instance_name/text_top/texto/text_on11 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \instance_name/text_top/texto/instruc_row1121  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/instruc_row112 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \instance_name/text_top/texto/Mmux_rom_addr48571  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4857 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000004000 ))
  \instance_name/text_top/texto/Mmux_rom_addr7641  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr48121 ),
    .I3(\instance_name/text_top/texto/instrucciones ),
    .I4(\instance_name/text_top/texto/dia ),
    .I5(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr764_301 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \instance_name/text_top/texto/Mmux_rom_addr481211  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr48121 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \instance_name/text_top/texto/Mmux_rom_addr8051  (
    .I0(\instance_name/text_top/texto/mes ),
    .I1(\instance_name/text_top/texto/instrucciones ),
    .I2(\instance_name/text_top/texto/dia ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr805_274 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \instance_name/text_top/texto/hora_encabezado1  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_9_3_832 ),
    .I2(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .I3(\instance_name/text_top/texto/fecha_encabezado2 ),
    .O(\instance_name/text_top/texto/hora_encabezado )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \instance_name/text_top/texto/fecha_encabezado21  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg_5_1_819 ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [9]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .O(\instance_name/text_top/texto/fecha_encabezado2 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \instance_name/text_top/texto/numerico_hora1  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg_7_2_843 ),
    .I1(\instance_name/text_top/texto/mes11_836 ),
    .I2(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .O(\instance_name/text_top/texto/numerico_hora )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr7651  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4855 ),
    .I4(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr765_299 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \instance_name/text_top/texto/Mmux_rom_addr48551  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4855 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \instance_name/text_top/texto/instruc_row11  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/instruc_row1 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \instance_name/text_top/texto/Mmux_rom_addr593431  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_6_1_823 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_5_1_824 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr59343 )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \instance_name/text_top/texto/Mmux_rom_addr48531  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4853 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \instance_name/text_top/texto/Mmux_rom_addr77131  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7713 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFBFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr59331  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr5933 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \instance_name/text_top/texto/Mmux_rom_addr7121  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr712_307 )
  );
  LUT6 #(
    .INIT ( 64'hFFBFFFFFFFFFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr76141  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7614 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \instance_name/text_top/texto/Mmux_rom_addr70111  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7011 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \instance_name/text_top/texto/Mmux_rom_addr7311  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_4_1_822 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_5_1_824 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr731 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \instance_name/text_top/texto/Mmux_rom_addr76121  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7612 )
  );
  LUT6 #(
    .INIT ( 64'h0000100010000000 ))
  \instance_name/text_top/vga_sync/v_sync_next1  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [2]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [3]),
    .I2(\instance_name/text_top/vga_sync/v_sync_next2 ),
    .I3(\instance_name/text_top/vga_sync/v_end<9>1_383 ),
    .I4(\instance_name/text_top/vga_sync/v_count_reg [0]),
    .I5(\instance_name/text_top/vga_sync/v_count_reg [1]),
    .O(\instance_name/text_top/vga_sync/v_sync_next )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \instance_name/text_top/vga_sync/v_sync_next31  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .O(\instance_name/text_top/vga_sync/v_end<9>1_383 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \instance_name/text_top/vga_sync/v_end<9>1  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [0]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [1]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [2]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [3]),
    .I4(\instance_name/text_top/vga_sync/v_end<9>1_383 ),
    .I5(\instance_name/text_top/vga_sync/v_sync_next2 ),
    .O(\instance_name/text_top/vga_sync/v_end )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \instance_name/text_top/vga_sync/v_sync_next21  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .O(\instance_name/text_top/vga_sync/v_sync_next2 )
  );
  LUT6 #(
    .INIT ( 64'h0020202020202000 ))
  \instance_name/text_top/vga_sync/h_sync_next1  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(\instance_name/text_top/vga_sync/h_sync_next )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o1  (
    .I0(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .I1(\instance_name/text_top/vga_sync/h_end ),
    .O(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_WR1_SW0 (
    .I0(contador[1]),
    .I1(contador[0]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hCCCCCDCD40004505 ))
  Mmux_WR1 (
    .I0(_n0518),
    .I1(contador[3]),
    .I2(_n0376),
    .I3(N4),
    .I4(_n0499),
    .I5(contador[2]),
    .O(WR)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF15511151 ))
  \state_reg_FSM_FFd3-In1  (
    .I0(state_reg_FSM_FFd1_139),
    .I1(state_reg_FSM_FFd4_136),
    .I2(contador[3]),
    .I3(contador[2]),
    .I4(contador[1]),
    .I5(state_reg_FSM_FFd5_135),
    .O(\state_reg_FSM_FFd3-In1_450 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \state_reg_FSM_FFd3-In3  (
    .I0(state_reg_FSM_FFd5_135),
    .I1(state_reg_FSM_FFd4_136),
    .O(\state_reg_FSM_FFd3-In4_452 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFAA8AAA8AAA8A ))
  \state_reg_FSM_FFd3-In4  (
    .I0(state_reg_FSM_FFd3_137),
    .I1(\state_reg_FSM_FFd3-In12 ),
    .I2(state_reg_FSM_FFd2_138),
    .I3(\state_reg_FSM_FFd3-In1_450 ),
    .I4(\state_reg_FSM_FFd3-In3_451 ),
    .I5(\state_reg_FSM_FFd3-In4_452 ),
    .O(\state_reg_FSM_FFd3-In )
  );
  LUT5 #(
    .INIT ( 32'h7272FF72 ))
  Mmux_CS13 (
    .I0(_n0600),
    .I1(n0062),
    .I2(Mmux_CS11),
    .I3(Mmux_CS111),
    .I4(_n0518),
    .O(CS)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_contador_next1121 (
    .I0(state_reg_FSM_FFd4_136),
    .I1(state_reg_FSM_FFd5_135),
    .O(Mmux_contador_next1121_454)
  );
  LUT6 #(
    .INIT ( 64'h80808080A2A08080 ))
  Mmux_contador_next1122 (
    .I0(contador[3]),
    .I1(_n0518),
    .I2(contador[2]),
    .I3(contador[1]),
    .I4(Mmux_contador_next1121_454),
    .I5(\state_reg_FSM_FFd5-In21 ),
    .O(Mmux_contador_next1122_455)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0011000F ))
  Mmux_contador_next1123 (
    .I0(\contador[3]_PWR_1_o_LessThan_139_o ),
    .I1(LecEscLogicTrst3_464),
    .I2(n0062),
    .I3(_n0581),
    .I4(_n0499),
    .I5(Mmux_CS111),
    .O(Mmux_contador_next1123_456)
  );
  LUT6 #(
    .INIT ( 64'hFFFF00F7FFFF0000 ))
  Mmux_contador_next1124 (
    .I0(state_reg_FSM_FFd5_135),
    .I1(state_reg_FSM_FFd4_136),
    .I2(\state_reg_FSM_FFd5-In21 ),
    .I3(_n0518),
    .I4(Mmux_contador_next1122_455),
    .I5(Mmux_contador_next1123_456),
    .O(Mmux_contador_next112)
  );
  LUT6 #(
    .INIT ( 64'h0001111111111111 ))
  \state_reg_FSM_FFd5-In1  (
    .I0(state_reg_FSM_FFd3_137),
    .I1(state_reg_FSM_FFd2_138),
    .I2(contador[1]),
    .I3(contador[2]),
    .I4(state_reg_FSM_FFd4_136),
    .I5(contador[3]),
    .O(\state_reg_FSM_FFd5-In1_457 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA08AA08AA08 ))
  \state_reg_FSM_FFd5-In2  (
    .I0(state_reg_FSM_FFd5_135),
    .I1(state_reg_FSM_FFd1_139),
    .I2(state_reg_FSM_FFd4_136),
    .I3(\state_reg_FSM_FFd5-In1_457 ),
    .I4(n0062),
    .I5(\state_reg_FSM_FFd5-In21 ),
    .O(\state_reg_FSM_FFd5-In2_458 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF41144141 ))
  \state_reg_FSM_FFd5-In3  (
    .I0(n0062),
    .I1(state_reg_FSM_FFd3_137),
    .I2(state_reg_FSM_FFd4_136),
    .I3(state_reg_FSM_FFd1_139),
    .I4(state_reg_FSM_FFd2_138),
    .I5(\state_reg_FSM_FFd5-In2_458 ),
    .O(\state_reg_FSM_FFd5-In )
  );
  LUT5 #(
    .INIT ( 32'hFFFFA8AA ))
  \state_reg_FSM_FFd4-In5  (
    .I0(state_reg_FSM_FFd4_136),
    .I1(\state_reg_FSM_FFd4-In4_460 ),
    .I2(\state_reg_FSM_FFd3-In12 ),
    .I3(state_reg_FSM_FFd5_135),
    .I4(\state_reg_FSM_FFd4-In3_459 ),
    .O(\state_reg_FSM_FFd4-In )
  );
  LUT6 #(
    .INIT ( 64'h088088880880888D ))
  LecEscLogicTrst1 (
    .I0(_n0600),
    .I1(n0062),
    .I2(state_reg_FSM_FFd4_136),
    .I3(state_reg_FSM_FFd5_135),
    .I4(_n06763),
    .I5(\state_reg_FSM_FFd5-In21 ),
    .O(LecEscLogicTrst)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  LecEscLogicTrst2 (
    .I0(contador[2]),
    .I1(contador[3]),
    .I2(state_reg_FSM_FFd5_135),
    .O(LecEscLogicTrst1_462)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFA820 ))
  LecEscLogicTrst3 (
    .I0(LecEscLogicTrst1_462),
    .I1(state_reg_FSM_FFd4_136),
    .I2(\state_reg_FSM_FFd5-In11 ),
    .I3(_n06763),
    .I4(\Mmux_state_reg[4]_PWR_11_o_Mux_204_o11_153 ),
    .I5(_n0345),
    .O(LecEscLogicTrst2_463)
  );
  LUT5 #(
    .INIT ( 32'hFFBBFFA8 ))
  LecEscLogicTrst6 (
    .I0(LecEscLogicTrst3_464),
    .I1(_n0373),
    .I2(LecEscLogicTrst4),
    .I3(LecEscLogicTrst2_463),
    .I4(LecEscLogicTrst),
    .O(LecEsc)
  );
  LUT6 #(
    .INIT ( 64'hF6F9F6FD49264926 ))
  \Mmux_state_reg[4]_PWR_12_o_Mux_206_o11  (
    .I0(state_reg_FSM_FFd4_136),
    .I1(state_reg_FSM_FFd5_135),
    .I2(state_reg_FSM_FFd1_139),
    .I3(state_reg_FSM_FFd2_138),
    .I4(n0062),
    .I5(state_reg_FSM_FFd3_137),
    .O(\Mmux_state_reg[4]_PWR_12_o_Mux_206_o1 )
  );
  LUT6 #(
    .INIT ( 64'hA8A8A8A8A8A8AFA8 ))
  ADLogicTrst4 (
    .I0(n0062),
    .I1(ADLogicTrst2_469),
    .I2(_n0401),
    .I3(ADLogicTrst1),
    .I4(_n0376),
    .I5(_n0373),
    .O(AD)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \instance_name/text_top/Fondo/blue_graph<1>1  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [2]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [1]),
    .O(\instance_name/text_top/Fondo/blue_graph [1])
  );
  LUT5 #(
    .INIT ( 32'h1151FFFF ))
  \instance_name/text_top/Fondo/blue_graph<1>2  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/Fondo/blue_graph [1]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [0]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .O(\instance_name/text_top/Fondo/blue_graph<1>1_471 )
  );
  LUT5 #(
    .INIT ( 32'h15FFFFFF ))
  \instance_name/text_top/Fondo/blue_graph<1>3  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [2]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [1]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [0]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I4(\instance_name/text_top/vga_sync/v_count_reg [3]),
    .O(\instance_name/text_top/Fondo/blue_graph<1>2_472 )
  );
  LUT6 #(
    .INIT ( 64'h5FFFFFFE54FFFEFE ))
  \instance_name/text_top/Fondo/blue_graph<1>4  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I5(\instance_name/text_top/Fondo/blue_graph<1>2_472 ),
    .O(\instance_name/text_top/Fondo/blue_graph<1>3_473 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \instance_name/text_top/Fondo/blue_graph<1>5  (
    .I0(\instance_name/text_top/Fondo/blue_graph<1>3_473 ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [9]),
    .I2(\instance_name/text_top/Fondo/blue_graph<1>1_471 ),
    .O(\instance_name/text_top/blue_graph [0])
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFF ))
  \instance_name/parpadeo31  (
    .I0(\instance_name/divparpadeo/m [20]),
    .I1(\instance_name/divparpadeo/m [21]),
    .I2(\instance_name/divparpadeo/m [19]),
    .I3(\instance_name/divparpadeo/m [18]),
    .I4(\instance_name/divparpadeo/m [17]),
    .O(\instance_name/parpadeo3 )
  );
  LUT6 #(
    .INIT ( 64'h5555555555555557 ))
  \instance_name/parpadeo32  (
    .I0(\instance_name/divparpadeo/m [13]),
    .I1(\instance_name/divparpadeo/m [9]),
    .I2(\instance_name/divparpadeo/m [7]),
    .I3(\instance_name/divparpadeo/m [6]),
    .I4(\instance_name/divparpadeo/m [5]),
    .I5(\instance_name/divparpadeo/m [8]),
    .O(\instance_name/parpadeo31_475 )
  );
  LUT6 #(
    .INIT ( 64'h55551555FFFFFFFF ))
  \instance_name/parpadeo33  (
    .I0(\instance_name/divparpadeo/m [14]),
    .I1(\instance_name/divparpadeo/m [12]),
    .I2(\instance_name/divparpadeo/m [10]),
    .I3(\instance_name/divparpadeo/m [11]),
    .I4(\instance_name/parpadeo31_475 ),
    .I5(\instance_name/divparpadeo/m [15]),
    .O(\instance_name/parpadeo32_476 )
  );
  LUT5 #(
    .INIT ( 32'h5504FFFF ))
  \instance_name/parpadeo34  (
    .I0(\instance_name/divparpadeo/m [22]),
    .I1(\instance_name/parpadeo32_476 ),
    .I2(\instance_name/divparpadeo/m [16]),
    .I3(\instance_name/parpadeo3 ),
    .I4(\instance_name/divparpadeo/m [23]),
    .O(\instance_name/parpadeo )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \instance_name/text_top/Mmux_red3_SW0  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr111 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4244 ),
    .I2(alarma_signal_IBUF_2),
    .I3(\instance_name/text_top/texto/heart ),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'hFFFE000000000000 ))
  \instance_name/text_top/Mmux_red3  (
    .I0(\instance_name/text_top/texto/alarma ),
    .I1(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .I2(N10),
    .I3(\instance_name/text_top/texto/text_on1 ),
    .I4(\instance_name/text_top/text_on ),
    .I5(\instance_name/text_top/texto/font_bit ),
    .O(\instance_name/red_next [2])
  );
  LUT4 #(
    .INIT ( 16'hF7A2 ))
  \instance_name/text_top/Mmux_green2_SW0  (
    .I0(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .I1(alarma_signal_IBUF_2),
    .I2(\instance_name/parpadeo ),
    .I3(\instance_name/text_top/texto/alarma ),
    .O(N12)
  );
  LUT5 #(
    .INIT ( 32'hFCAA00AA ))
  \instance_name/text_top/Mmux_green2  (
    .I0(\instance_name/text_top/blue_graph [0]),
    .I1(N12),
    .I2(\instance_name/text_top/texto/text_on1 ),
    .I3(\instance_name/text_top/text_on ),
    .I4(\instance_name/text_top/texto/font_bit ),
    .O(\instance_name/green_next [1])
  );
  LUT4 #(
    .INIT ( 16'hFFF7 ))
  \instance_name/text_top/Mmux_green3_SW0  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr111 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4244 ),
    .I2(\instance_name/text_top/texto/heart ),
    .I3(alarma_signal_IBUF_2),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'h0100000000000000 ))
  \instance_name/text_top/Mmux_green3  (
    .I0(N14),
    .I1(\instance_name/text_top/texto/instruc_row3 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr112 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr75_283 ),
    .I4(\instance_name/text_top/text_on ),
    .I5(\instance_name/text_top/texto/font_bit ),
    .O(\instance_name/green_next [2])
  );
  LUT5 #(
    .INIT ( 32'hEEEEEFEE ))
  \instance_name/text_top/Mmux_blue21  (
    .I0(\instance_name/text_top/texto/cronometro ),
    .I1(\instance_name/text_top/texto/hora_encabezado ),
    .I2(\instance_name/text_top/texto/numerico_hora ),
    .I3(\instance_name/text_top/texto/heart ),
    .I4(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .O(\instance_name/text_top/Mmux_blue2 )
  );
  LUT6 #(
    .INIT ( 64'hCCDDCCCCCCDCCCCC ))
  \instance_name/text_top/Mmux_blue22  (
    .I0(\instance_name/text_top/texto/year ),
    .I1(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr59361 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr302 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr805_274 ),
    .I5(\instance_name/text_top/Mmux_blue2 ),
    .O(\instance_name/text_top/Mmux_blue21_481 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFF7FF ))
  \instance_name/text_top/texto/Mmux_rom_addr4_SW0  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [2]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4244 ),
    .I2(\instance_name/text_top/texto/heart ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr111 ),
    .I4(\instance_name/text_top/texto/instruc_row3 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr112 ),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'hEEFEAAFACCFC00F0 ))
  \instance_name/text_top/texto/Mmux_rom_addr4  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [0]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [1]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr75_283 ),
    .I3(N16),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr114 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr116 ),
    .O(\instance_name/text_top/texto/rom_addr [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFF7FF ))
  \instance_name/text_top/texto/Mmux_rom_addr15_SW0  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4244 ),
    .I2(\instance_name/text_top/texto/heart ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr111 ),
    .I4(\instance_name/text_top/texto/instruc_row3 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr112 ),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'hEEFEAAFACCFC00F0 ))
  \instance_name/text_top/texto/Mmux_rom_addr15  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [2]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [3]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr75_283 ),
    .I3(N18),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr114 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr116 ),
    .O(\instance_name/text_top/texto/rom_addr [2])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFF7FF ))
  \instance_name/text_top/texto/Mmux_rom_addr11_SW0  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [3]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4244 ),
    .I2(\instance_name/text_top/texto/heart ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr111 ),
    .I4(\instance_name/text_top/texto/instruc_row3 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr112 ),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'hEEFEAAFACCFC00F0 ))
  \instance_name/text_top/texto/Mmux_rom_addr11  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [1]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [2]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr75_283 ),
    .I3(N20),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr114 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr116 ),
    .O(\instance_name/text_top/texto/rom_addr [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFF7FF ))
  \instance_name/text_top/texto/Mmux_rom_addr19_SW0  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4244 ),
    .I2(\instance_name/text_top/texto/heart ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr111 ),
    .I4(\instance_name/text_top/texto/instruc_row3 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr112 ),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'hEEFEAAFACCFC00F0 ))
  \instance_name/text_top/texto/Mmux_rom_addr19  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr75_283 ),
    .I3(N22),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr114 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr116 ),
    .O(\instance_name/text_top/texto/rom_addr [3])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFF8F0 ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<2>_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4244 ),
    .I2(\instance_name/text_top/texto/heart ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr111 ),
    .I4(\instance_name/text_top/texto/instruc_row3 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr112 ),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFF8F0 ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<1>_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4244 ),
    .I2(\instance_name/text_top/texto/heart ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr111 ),
    .I4(\instance_name/text_top/texto/instruc_row3 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr112 ),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFF8F0 ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [2]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4244 ),
    .I2(\instance_name/text_top/texto/heart ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr111 ),
    .I4(\instance_name/text_top/texto/instruc_row3 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr112 ),
    .O(N28)
  );
  LUT4 #(
    .INIT ( 16'hFBFF ))
  \instance_name/text_top/texto/cronometro_cambio_SW0  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg_5_2_828 ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg_7_1_827 ),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [9]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'h0000000000420040 ))
  \instance_name/text_top/texto/cronometro_cambio  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_9_3_832 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_7_2_831 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg_8_3_833 ),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr59343 ),
    .I5(N30),
    .O(\instance_name/text_top/texto/cronometro_cambio_352 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFF9F9F9 ))
  \instance_name/text_top/texto/Mmux_rom_addr232  (
    .I0(DatoSegT[6]),
    .I1(DatoSegT[5]),
    .I2(DatoSegT[7]),
    .I3(DatoSegT[3]),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr7041 ),
    .I5(DatoSegT[4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr232_311 )
  );
  LUT6 #(
    .INIT ( 64'h0001000100010007 ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>11  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/fecha_encabezado1 ),
    .I3(\instance_name/text_top/texto/dia1_830 ),
    .I4(\instance_name/text_top/texto/mes ),
    .I5(\instance_name/text_top/texto/year ),
    .O(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>11_491 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>12  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .O(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>12_492 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \instance_name/text_top/texto/Mmux_rom_addr7222_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'h0C1D0C0C00110000 ))
  \instance_name/text_top/texto/Mmux_rom_addr7222  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(N36),
    .I4(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr78_272 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7222_262 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \instance_name/text_top/texto/fecha_encabezado_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_7_1_825 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_6_1_823 ),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'h0110001000000000 ))
  \instance_name/text_top/texto/fecha_encabezado  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg_7_2_843 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_9_3_832 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg_8_3_833 ),
    .I3(N38),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr731 ),
    .I5(\instance_name/text_top/texto/fecha_encabezado2 ),
    .O(\instance_name/text_top/texto/fecha_encabezado_368 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000003 ))
  \instance_name/text_top/texto/instruc_row12_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_3_1_821 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_7_1_825 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg_6_1_823 ),
    .I3(\instance_name/text_top/vga_sync/h_count_reg_4_1_822 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg_5_1_824 ),
    .I5(\instance_name/text_top/vga_sync/v_count_reg [9]),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000040 ))
  \instance_name/text_top/texto/instruc_row12  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg_7_2_843 ),
    .I3(\instance_name/text_top/vga_sync/h_count_reg_9_3_832 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg_8_3_833 ),
    .I5(N40),
    .O(\instance_name/text_top/texto/instruc_row12_295 )
  );
  LUT6 #(
    .INIT ( 64'h0700000000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr341  (
    .I0(DatoSegT[0]),
    .I1(DatoSegT[1]),
    .I2(DatoSegT[2]),
    .I3(DatoSegT[4]),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr593411 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr346_254 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr34 )
  );
  LUT6 #(
    .INIT ( 64'h2232003022220000 ))
  \instance_name/text_top/texto/Mmux_rom_addr344  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr342_498 ),
    .I1(\instance_name/text_top/texto/dia ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr34 ),
    .I3(\instance_name/text_top/texto/instrucciones ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr7217_239 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr4859 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr343_499 )
  );
  LUT6 #(
    .INIT ( 64'hFCCC0000FCCCA0A0 ))
  \instance_name/text_top/texto/Mmux_rom_addr3412  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr3411_504 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr3413_505 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr349_502 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr3410_503 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I5(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3414_506 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFAFCF0 ))
  \instance_name/text_top/texto/Mmux_rom_addr3414  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr348_501 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr3415_507 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr345 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr3414_506 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr78_272 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr343_499 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3416 )
  );
  LUT6 #(
    .INIT ( 64'h2220202020202020 ))
  \instance_name/text_top/texto/Mmux_rom_addr3418  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr34103 ),
    .I1(\instance_name/text_top/texto/pixel_x[9]_GND_6_o_equal_143_o ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr3419 ),
    .I3(DatoSegT[0]),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr592 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr5951 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3420_511 )
  );
  LUT6 #(
    .INIT ( 64'h5450545054545450 ))
  \instance_name/text_top/texto/Mmux_rom_addr3422  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr3422_513 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr3423_514 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr30332 ),
    .I5(\instance_name/text_top/texto/instruc_row1 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3424_515 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFFFF0C00 ))
  \instance_name/text_top/texto/Mmux_rom_addr3427  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr3425 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr3428_518 ),
    .I2(\instance_name/text_top/texto/instruc_row2 ),
    .I3(\instance_name/text_top/texto/instruc_row3 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr3426_517 ),
    .I5(\instance_name/text_top/texto/instruc_row1 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3429_519 )
  );
  LUT6 #(
    .INIT ( 64'hAA00300000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr3429  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr2331 ),
    .I1(\instance_name/text_top/texto/cambio_year[7]_GND_6_o_LessThan_145_o ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr232_311 ),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr422 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3431_521 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \instance_name/text_top/texto/Mmux_rom_addr3430  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3432_522 )
  );
  LUT6 #(
    .INIT ( 64'h5555555510101110 ))
  \instance_name/text_top/texto/Mmux_rom_addr3431  (
    .I0(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_462_o ),
    .I1(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_464_o ),
    .I2(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_465_o ),
    .I3(\instance_name/text_top/texto/_n4953_330 ),
    .I4(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_466_o ),
    .I5(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_463_o ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3433_523 )
  );
  LUT4 #(
    .INIT ( 16'hFF54 ))
  \instance_name/text_top/texto/Mmux_rom_addr3432  (
    .I0(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr3433_523 ),
    .I2(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_104_o ),
    .I3(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3434_524 )
  );
  LUT6 #(
    .INIT ( 64'hAA000000AA0C0000 ))
  \instance_name/text_top/texto/Mmux_rom_addr3433  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr3434_524 ),
    .I1(\instance_name/text_top/texto/GND_6_o_cambio_year[7]_AND_27_o ),
    .I2(\instance_name/text_top/texto/cambio_year[7]_GND_6_o_LessThan_145_o ),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr3432_522 ),
    .I5(\instance_name/text_top/texto/hora_encabezado ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3435_525 )
  );
  LUT6 #(
    .INIT ( 64'h00000000FF22FF20 ))
  \instance_name/text_top/texto/Mmux_rom_addr3434  (
    .I0(\instance_name/text_top/texto/numerico_hora ),
    .I1(\instance_name/text_top/texto/cronometro ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr3431_521 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr3430_520 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr3435_525 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr302 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3436_526 )
  );
  LUT5 #(
    .INIT ( 32'h11111110 ))
  \instance_name/text_top/texto/Mmux_rom_addr3435  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr3429_519 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr3424_515 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr3436_526 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3437_527 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAFFC0AAAAC0C0 ))
  \instance_name/text_top/texto/Mmux_rom_addr3438  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr2331 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr3439_529 ),
    .I2(\instance_name/text_top/texto/pixel_x[9]_PWR_6_o_equal_758_o ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr3438_528 ),
    .I4(\instance_name/text_top/texto/_n1793 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr4243 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3440_530 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFA9 ))
  \instance_name/text_top/texto/Mmux_rom_addr3440  (
    .I0(DatoSegT[5]),
    .I1(DatoSegT[3]),
    .I2(DatoSegT[4]),
    .I3(DatoSegT[2]),
    .I4(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_465_o ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr23112 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3442_532 )
  );
  LUT6 #(
    .INIT ( 64'h5555555511111110 ))
  \instance_name/text_top/texto/Mmux_rom_addr3441  (
    .I0(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_462_o ),
    .I1(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_464_o ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr3442_532 ),
    .I3(DatoSegT[0]),
    .I4(DatoSegT[1]),
    .I5(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_463_o ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3443_533 )
  );
  LUT4 #(
    .INIT ( 16'hFF54 ))
  \instance_name/text_top/texto/Mmux_rom_addr3442  (
    .I0(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr3443_533 ),
    .I2(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_104_o ),
    .I3(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3444_534 )
  );
  LUT6 #(
    .INIT ( 64'h00CC000000FCAAAA ))
  \instance_name/text_top/texto/Mmux_rom_addr3445  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr3444_534 ),
    .I1(\instance_name/text_top/texto/GND_6_o_cambio_year[7]_AND_27_o ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr3446_536 ),
    .I3(\instance_name/text_top/texto/cambio_year[7]_GND_6_o_LessThan_145_o ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I5(\instance_name/text_top/texto/pixel_x[9]_PWR_6_o_equal_758_o ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3447_537 )
  );
  LUT6 #(
    .INIT ( 64'hA000A200A000A000 ))
  \instance_name/text_top/texto/Mmux_rom_addr3446  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr3441_531 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr427 ),
    .I4(\instance_name/text_top/texto/_n1793 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr3447_537 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3448_538 )
  );
  LUT6 #(
    .INIT ( 64'h00000000FF88FF80 ))
  \instance_name/text_top/texto/Mmux_rom_addr3447  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr5933 ),
    .I1(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr3440_530 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr42132 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr3448_538 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr7721 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3449_539 )
  );
  LUT5 #(
    .INIT ( 32'h33331110 ))
  \instance_name/text_top/texto/Mmux_rom_addr3450  (
    .I0(\instance_name/text_top/texto/hora_encabezado ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr302 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr3451_541 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr3450_540 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr3449_539 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3452 )
  );
  LUT6 #(
    .INIT ( 64'hFFD0FFD0FFD0FFC0 ))
  \instance_name/text_top/texto/Mmux_rom_addr3451  (
    .I0(\instance_name/text_top/texto/year ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr3420_511 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr3417_509 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr3416 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr3452 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr3437_527 ),
    .O(\instance_name/text_top/texto/rom_addr [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \instance_name/text_top/texto/Mmux_rom_addr801  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr7614 ),
    .I1(\instance_name/text_top/texto/year ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr767_650 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF50FF40 ))
  \instance_name/text_top/texto/Mmux_rom_addr806  (
    .I0(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr767_650 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr805_274 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr764_301 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr806_543 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr803 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr807_544 )
  );
  LUT5 #(
    .INIT ( 32'h8080A000 ))
  \instance_name/text_top/texto/Mmux_rom_addr807  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr8043 ),
    .I3(\instance_name/text_top/texto/dia ),
    .I4(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr808_545 )
  );
  LUT6 #(
    .INIT ( 64'h0000440000005400 ))
  \instance_name/text_top/texto/Mmux_rom_addr808  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4242 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr3421_512 ),
    .I3(\instance_name/text_top/texto/mes ),
    .I4(\instance_name/text_top/texto/dia ),
    .I5(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr809_546 )
  );
  LUT5 #(
    .INIT ( 32'hAAEA0000 ))
  \instance_name/text_top/texto/Mmux_rom_addr8010  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/texto/year ),
    .I4(\instance_name/text_top/texto/cronometro ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8011_548 )
  );
  LUT5 #(
    .INIT ( 32'h00A000E0 ))
  \instance_name/text_top/texto/Mmux_rom_addr8013  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr8012_549 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr8013_550 ),
    .I2(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .I3(\instance_name/text_top/texto/numerico_hora ),
    .I4(\instance_name/text_top/texto/cronometro ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8014_551 )
  );
  LUT6 #(
    .INIT ( 64'h0011001000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr8014  (
    .I0(\instance_name/text_top/texto/hora_encabezado ),
    .I1(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr8011_548 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr302 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr8014_551 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr805_274 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8015_552 )
  );
  LUT6 #(
    .INIT ( 64'hFFAAFF88FFAAFF80 ))
  \instance_name/text_top/texto/Mmux_rom_addr8015  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr8010_547 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr808_545 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr809_546 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr8015_552 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8016_553 )
  );
  LUT5 #(
    .INIT ( 32'h30201000 ))
  \instance_name/text_top/texto/Mmux_rom_addr8021  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr302 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr805_274 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr8021_558 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr8019_556 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8022_559 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \instance_name/text_top/texto/Mmux_rom_addr8025  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr7612 ),
    .I2(\instance_name/text_top/texto/instruc_row3 ),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I4(\instance_name/text_top/texto/instruc_row2 ),
    .I5(\instance_name/text_top/texto/instruc_row1 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8026_562 )
  );
  LUT3 #(
    .INIT ( 8'h23 ))
  \instance_name/text_top/texto/Mmux_rom_addr8027  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8028_564 )
  );
  LUT6 #(
    .INIT ( 64'hC0C0FF44C0C00000 ))
  \instance_name/text_top/texto/Mmux_rom_addr8028  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr8028_564 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr8027_563 ),
    .I4(\instance_name/text_top/texto/instruc_row2 ),
    .I5(\instance_name/text_top/texto/instruc_row3 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8029_565 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \instance_name/text_top/texto/Mmux_rom_addr8030  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8032_567 )
  );
  LUT6 #(
    .INIT ( 64'hF5F4F5F4FFFF5500 ))
  \instance_name/text_top/texto/Mmux_rom_addr8031  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr8032_567 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr8030_566 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr30332 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr8029_565 ),
    .I5(\instance_name/text_top/texto/instruc_row1 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8033_568 )
  );
  LUT6 #(
    .INIT ( 64'hF030F010F030F000 ))
  \instance_name/text_top/texto/Mmux_rom_addr8033  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/texto/instrucciones ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr8023 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr8025_561 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr8026_562 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr8033_568 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8034_569 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF55445540 ))
  \instance_name/text_top/texto/Mmux_rom_addr8034  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr8017_554 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr8034_569 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr8016_553 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr8022_559 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr807_544 ),
    .O(\instance_name/text_top/texto/rom_addr [9])
  );
  LUT6 #(
    .INIT ( 64'h3330880033300000 ))
  \instance_name/text_top/texto/Mmux_rom_addr612  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr61 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4856 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr74_293 ),
    .I4(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr6111_288 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr611_571 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFDCCCFFFF5000 ))
  \instance_name/text_top/texto/Mmux_rom_addr613  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4853 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr78_272 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr611_571 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr7222_262 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr612_572 )
  );
  LUT6 #(
    .INIT ( 64'hEEEEAAAAFCCCF000 ))
  \instance_name/text_top/texto/Mmux_rom_addr6111  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr618_576 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr617_575 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr619_577 ),
    .I3(\instance_name/text_top/texto/instruc_row2 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr5941 ),
    .I5(\instance_name/text_top/texto/instruc_row1 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6110_578 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \instance_name/text_top/texto/Mmux_rom_addr6112  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6112_579 )
  );
  LUT6 #(
    .INIT ( 64'hFFAAFFAAFF88FF80 ))
  \instance_name/text_top/texto/Mmux_rom_addr6115  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr4818_617 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr6112_579 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr6113 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr616 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr6114_581 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr6110_578 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6115_582 )
  );
  LUT6 #(
    .INIT ( 64'hAACCAA00AAFCAAF0 ))
  \instance_name/text_top/texto/Mmux_rom_addr6119  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr6116_583 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr6118_585 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr6117_584 ),
    .I3(\instance_name/text_top/texto/instruc_row3 ),
    .I4(\instance_name/text_top/texto/hora_encabezado ),
    .I5(\instance_name/text_top/texto/cronometro ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6119_586 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \instance_name/text_top/texto/Mmux_rom_addr6122  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6122_588 )
  );
  LUT6 #(
    .INIT ( 64'h50500000D050C000 ))
  \instance_name/text_top/texto/Mmux_rom_addr6123  (
    .I0(\instance_name/text_top/texto/GND_6_o_min_c[7]_AND_138_o_mmx_out ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr5931 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr6122_588 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr70221 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr512 ),
    .I5(\instance_name/text_top/texto/hora_encabezado ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6123_589 )
  );
  LUT6 #(
    .INIT ( 64'h1111101011111000 ))
  \instance_name/text_top/texto/Mmux_rom_addr6126  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr6121_587 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr6119_586 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr6125_591 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6126_592 )
  );
  LUT6 #(
    .INIT ( 64'h0000C0C04400C4C0 ))
  \instance_name/text_top/texto/Mmux_rom_addr6130  (
    .I0(\instance_name/text_top/texto/GND_6_o_min_c[7]_AND_138_o_mmx_out ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr6129_595 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr512 ),
    .I4(\instance_name/text_top/texto/pixel_x[9]_PWR_6_o_equal_758_o ),
    .I5(\instance_name/text_top/texto/_n1793 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6130_596 )
  );
  LUT6 #(
    .INIT ( 64'hCCCC888000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr6132  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr6128_594 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr5933 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr6131_597 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr6130_596 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr6127_593 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr70225 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6132_598 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0808AA08 ))
  \instance_name/text_top/texto/Mmux_rom_addr6133  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr428 ),
    .I1(\instance_name/text_top/texto/cronometro ),
    .I2(\instance_name/text_top/texto/instruc_row112 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr30131 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr6132_598 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6133_599 )
  );
  LUT6 #(
    .INIT ( 64'hAA008000AA000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr6134  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr427 ),
    .I4(\instance_name/text_top/texto/cronometro ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr59361 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6134_600 )
  );
  LUT5 #(
    .INIT ( 32'h55555444 ))
  \instance_name/text_top/texto/Mmux_rom_addr482  (
    .I0(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_100_o ),
    .I1(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_104_o ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr61111 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4210 ),
    .I4(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr481_602 )
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \instance_name/text_top/texto/Mmux_rom_addr483  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr48 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr481_602 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr483_603 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \instance_name/text_top/texto/Mmux_rom_addr484  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr484_604 )
  );
  LUT6 #(
    .INIT ( 64'hAEAAACA0ACA0ACA0 ))
  \instance_name/text_top/texto/Mmux_rom_addr486  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr484_604 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr483_603 ),
    .I2(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I3(\instance_name/text_top/texto/dia ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr485_605 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr805_274 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr486_606 )
  );
  LUT5 #(
    .INIT ( 32'hBAAAAAAA ))
  \instance_name/text_top/texto/Mmux_rom_addr487  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr765_299 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr486_606 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr487_607 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \instance_name/text_top/texto/Mmux_rom_addr488  (
    .I0(\instance_name/text_top/texto/dia ),
    .I1(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr488_608 )
  );
  LUT6 #(
    .INIT ( 64'h1010330010100000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4810  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4857 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr489_609 ),
    .I4(\instance_name/text_top/texto/instrucciones ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr4859 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4810_610 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \instance_name/text_top/texto/Mmux_rom_addr4812  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4813_612 )
  );
  LUT6 #(
    .INIT ( 64'hF000F000F888F000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4813  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr4818_617 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4813_612 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4812_611 ),
    .I3(\instance_name/text_top/texto/instrucciones ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr4851_304 ),
    .I5(\instance_name/text_top/texto/instruc_row1 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4814_613 )
  );
  LUT3 #(
    .INIT ( 8'hDC ))
  \instance_name/text_top/texto/Mmux_rom_addr4814  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4810_610 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4814_613 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4815_614 )
  );
  LUT6 #(
    .INIT ( 64'hF2F0F0F000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4816  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr485421 ),
    .I1(\instance_name/text_top/texto/GND_6_o_cambio_year[7]_AND_27_o ),
    .I2(\instance_name/text_top/texto/pixel_x[9]_GND_6_o_equal_143_o ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4243 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr427 ),
    .I5(\instance_name/text_top/texto/year ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4817_616 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \instance_name/text_top/texto/Mmux_rom_addr4817  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4818_617 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \instance_name/text_top/texto/Mmux_rom_addr4826  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4826_622 )
  );
  LUT6 #(
    .INIT ( 64'hC4C4C4C044444400 ))
  \instance_name/text_top/texto/Mmux_rom_addr4828  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4818_617 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4824_620 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4825_621 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr4827_623 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr4823_619 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4828_624 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \instance_name/text_top/texto/Mmux_rom_addr4831  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4832_627 )
  );
  LUT6 #(
    .INIT ( 64'hF000F88800000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4832  (
    .I0(\instance_name/text_top/texto/GND_6_o_min_c[7]_AND_138_o_mmx_out ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr421311 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr428 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4832_627 ),
    .I4(\instance_name/text_top/texto/_n1793 ),
    .I5(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4833 )
  );
  LUT6 #(
    .INIT ( 64'h00000000A0A08800 ))
  \instance_name/text_top/texto/Mmux_rom_addr4839  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4244 ),
    .I4(\instance_name/text_top/texto/alarma ),
    .I5(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4840_632 )
  );
  LUT6 #(
    .INIT ( 64'h5555555555554440 ))
  \instance_name/text_top/texto/Mmux_rom_addr4840  (
    .I0(\instance_name/text_top/texto/numerico_hora ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr427 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4840_632 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4839_631 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr42132 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr4833 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4841_633 )
  );
  LUT5 #(
    .INIT ( 32'h0F880888 ))
  \instance_name/text_top/texto/Mmux_rom_addr4841  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr4210 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr702231_250 ),
    .I2(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o1 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr591 ),
    .I4(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o1 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4842 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \instance_name/text_top/texto/Mmux_rom_addr4844  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4845_636 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA200020002000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4845  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr4842 ),
    .I1(\instance_name/text_top/texto/numerico_hora ),
    .I2(\instance_name/text_top/texto/_n1793 ),
    .I3(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr4845_636 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr4844_635 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4846_637 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF1110 ))
  \instance_name/text_top/texto/Mmux_rom_addr4847  (
    .I0(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_463_o ),
    .I1(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_462_o ),
    .I2(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_464_o ),
    .I3(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_465_o ),
    .I4(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o ),
    .I5(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_104_o ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4848_639 )
  );
  LUT6 #(
    .INIT ( 64'h00FE0000000C0000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4849  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr4849_640 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr512 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4850_641 )
  );
  LUT6 #(
    .INIT ( 64'hDDDDDDDDDDDDDDDC ))
  \instance_name/text_top/texto/Mmux_rom_addr4851  (
    .I0(\instance_name/text_top/texto/cronometro ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4830_626 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4852_642 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4846_637 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr425 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr4841_633 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4854_643 )
  );
  LUT6 #(
    .INIT ( 64'h4400000044400000 ))
  \instance_name/text_top/texto/Mmux_rom_addr763  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4242 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr3421_512 ),
    .I4(\instance_name/text_top/texto/mes ),
    .I5(\instance_name/text_top/texto/instrucciones ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr762_647 )
  );
  LUT6 #(
    .INIT ( 64'hCDCDCDCCC5C5C5C0 ))
  \instance_name/text_top/texto/Mmux_rom_addr765  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr74_293 ),
    .I2(\instance_name/text_top/texto/dia ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr762_647 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr761_646 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr763_648 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr766 )
  );
  LUT6 #(
    .INIT ( 64'hAAA2AA22A0A00000 ))
  \instance_name/text_top/texto/Mmux_rom_addr769  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr34441 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr7713 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr769_652 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4242 ),
    .I4(\instance_name/text_top/texto/cronometro ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr70225 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7610_653 )
  );
  LUT6 #(
    .INIT ( 64'hFFF0FFF0FEF0FCF0 ))
  \instance_name/text_top/texto/Mmux_rom_addr7616  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr427 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr7613 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr767_650 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr768_651 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr7618_656 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr7610_653 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7619 )
  );
  LUT6 #(
    .INIT ( 64'h0C040C0304040000 ))
  \instance_name/text_top/texto/Mmux_rom_addr7622  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I4(\instance_name/text_top/texto/instruc_row3 ),
    .I5(\instance_name/text_top/texto/hora_encabezado ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7625_660 )
  );
  LUT5 #(
    .INIT ( 32'h11111110 ))
  \instance_name/text_top/texto/Mmux_rom_addr7624  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr7621 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr7623_659 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr7626_661 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7627 )
  );
  LUT6 #(
    .INIT ( 64'hF5F5F4F4F5F5F4F0 ))
  \instance_name/text_top/texto/Mmux_rom_addr7625  (
    .I0(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr805_274 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr76 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr7619 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr766 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr7627 ),
    .O(\instance_name/text_top/texto/rom_addr [8])
  );
  LUT6 #(
    .INIT ( 64'hFF05FF00BDBD0000 ))
  \instance_name/text_top/texto/Mmux_rom_addr78  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr77_666 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr79_667 ),
    .I5(\instance_name/text_top/texto/instruc_row3 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr710_668 )
  );
  LUT6 #(
    .INIT ( 64'h110011001F0F1100 ))
  \instance_name/text_top/texto/Mmux_rom_addr79  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/texto/instruc_row2 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr73 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr710_668 ),
    .I5(\instance_name/text_top/texto/instruc_row1 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr711_669 )
  );
  LUT6 #(
    .INIT ( 64'h0022000200220000 ))
  \instance_name/text_top/texto/Mmux_rom_addr710  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr4818_617 ),
    .I1(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I2(\instance_name/text_top/texto/instrucciones ),
    .I3(\instance_name/text_top/texto/dia ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr72 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr711_669 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr713_670 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFF8F0 ))
  \instance_name/text_top/texto/Mmux_rom_addr712  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr714_671 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr78_272 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr803 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr715_672 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFCF0EC00 ))
  \instance_name/text_top/texto/Mmux_rom_addr714  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr7011 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr428 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr427 ),
    .I3(\instance_name/text_top/texto/cronometro ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr716 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr425 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr717 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF1000 ))
  \instance_name/text_top/texto/Mmux_rom_addr715  (
    .I0(\instance_name/text_top/texto/hora_encabezado ),
    .I1(\instance_name/text_top/texto/instruc_row3 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr75_283 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr717 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr713_670 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr715_672 ),
    .O(\instance_name/text_top/texto/rom_addr [10])
  );
  LUT5 #(
    .INIT ( 32'hC080C000 ))
  \instance_name/text_top/texto/Mmux_rom_addr721  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr34211 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr74_293 ),
    .I3(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr6111_288 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr721_675 )
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \instance_name/text_top/texto/Mmux_rom_addr722  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr721_675 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr7222_262 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr722_676 )
  );
  LUT6 #(
    .INIT ( 64'hCCF4CC4488F08800 ))
  \instance_name/text_top/texto/Mmux_rom_addr7212  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr7210_682 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr7211_683 ),
    .I3(\instance_name/text_top/texto/cronometro ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr70223 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr70225 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7212_684 )
  );
  LUT6 #(
    .INIT ( 64'h0001000100010000 ))
  \instance_name/text_top/texto/Mmux_rom_addr7217  (
    .I0(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_465_o ),
    .I1(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_464_o ),
    .I2(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_463_o ),
    .I3(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_462_o ),
    .I4(\instance_name/text_top/texto/_n4953_330 ),
    .I5(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_466_o ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7218_686 )
  );
  LUT6 #(
    .INIT ( 64'hFFEECCCCFFECCCCC ))
  \instance_name/text_top/texto/Mmux_rom_addr7219  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr427 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr728_680 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr7216_685 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr7212_684 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr729_681 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr7219_687 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7220_688 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \instance_name/text_top/texto/Mmux_rom_addr7221  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7223_690 )
  );
  LUT6 #(
    .INIT ( 64'hFF8AFF880A0A0000 ))
  \instance_name/text_top/texto/Mmux_rom_addr7223  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr7223_690 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr7011 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr422 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr7221_689 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr4851_304 ),
    .I5(\instance_name/text_top/texto/instruc_row1 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7224_691 )
  );
  LUT5 #(
    .INIT ( 32'h12320000 ))
  \instance_name/text_top/texto/Mmux_rom_addr7225  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I4(\instance_name/text_top/texto/hora_encabezado ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7226_693 )
  );
  LUT6 #(
    .INIT ( 64'h0A0F0A0C0A0F0A00 ))
  \instance_name/text_top/texto/Mmux_rom_addr7232  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr7232_696 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr7230 ),
    .I2(\instance_name/text_top/texto/instruc_row2 ),
    .I3(\instance_name/text_top/texto/instruc_row3 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr7226_693 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr7714 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7233_697 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFB0B0B080 ))
  \instance_name/text_top/texto/Mmux_rom_addr7234  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr724_677 ),
    .I1(\instance_name/text_top/texto/instrucciones ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr488_608 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr7220_688 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr7234_698 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr722_676 ),
    .O(\instance_name/text_top/texto/rom_addr [7])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFEB ))
  \instance_name/text_top/texto/_n4953  (
    .I0(DatoSegT[7]),
    .I1(DatoSegT[5]),
    .I2(DatoSegT[4]),
    .I3(DatoSegT[6]),
    .I4(DatoSegT[3]),
    .I5(N42),
    .O(\instance_name/text_top/texto/_n4953_330 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF7FFF ))
  \instance_name/text_top/vga_sync/h_end<9>_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [2]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [1]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [0]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'h0010000000000000 ))
  \instance_name/text_top/vga_sync/h_end<9>  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(N44),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .O(\instance_name/text_top/vga_sync/h_end )
  );
  IBUF   clk_IBUF (
    .I(clk),
    .O(cien_OBUF_848)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_0)
  );
  IBUF   alarma_signal_IBUF (
    .I(alarma_signal),
    .O(alarma_signal_IBUF_2)
  );
  IOBUF   DatoDir_7_IOBUF (
    .I(DatoDirPrev_6_1_860),
    .T(LecEsc),
    .O(N46),
    .IO(DatoDir[7])
  );
  IOBUF   DatoDir_6_IOBUF (
    .I(DatoDirPrev[6]),
    .T(LecEsc),
    .O(N47),
    .IO(DatoDir[6])
  );
  IOBUF   DatoDir_5_IOBUF (
    .I(DatoDirPrev[5]),
    .T(LecEsc),
    .O(N48),
    .IO(DatoDir[5])
  );
  IOBUF   DatoDir_4_IOBUF (
    .I(DatoDirPrev[4]),
    .T(LecEsc),
    .O(N49),
    .IO(DatoDir[4])
  );
  IOBUF   DatoDir_3_IOBUF (
    .I(DatoDirPrev[3]),
    .T(LecEsc),
    .O(N50),
    .IO(DatoDir[3])
  );
  IOBUF   DatoDir_2_IOBUF (
    .I(DatoDirPrev[2]),
    .T(LecEsc),
    .O(N51),
    .IO(DatoDir[2])
  );
  IOBUF   DatoDir_1_IOBUF (
    .I(DatoDirPrev[1]),
    .T(LecEsc),
    .O(N52),
    .IO(DatoDir[1])
  );
  IOBUF   DatoDir_0_IOBUF (
    .I(DatoDirPrev[0]),
    .T(LecEsc),
    .O(N53),
    .IO(DatoDir[0])
  );
  OBUF   red_2_OBUF (
    .I(\instance_name/red_reg [2]),
    .O(red[2])
  );
  OBUF   red_1_OBUF (
    .I(\instance_name/red_reg [1]),
    .O(red[1])
  );
  OBUF   red_0_OBUF (
    .I(\instance_name/red_reg [0]),
    .O(red[0])
  );
  OBUF   green_2_OBUF (
    .I(\instance_name/green_reg [2]),
    .O(green[2])
  );
  OBUF   green_1_OBUF (
    .I(\instance_name/green_reg [1]),
    .O(green[1])
  );
  OBUF   green_0_OBUF (
    .I(\instance_name/green_reg [0]),
    .O(green[0])
  );
  OBUF   blue_1_OBUF (
    .I(\instance_name/blue_reg [1]),
    .O(blue[1])
  );
  OBUF   blue_0_OBUF (
    .I(\instance_name/green_reg [0]),
    .O(blue[0])
  );
  OBUF   pixel_x_9_OBUF (
    .I(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .O(pixel_x[9])
  );
  OBUF   pixel_x_8_OBUF (
    .I(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .O(pixel_x[8])
  );
  OBUF   pixel_x_7_OBUF (
    .I(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .O(pixel_x[7])
  );
  OBUF   pixel_x_6_OBUF (
    .I(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(pixel_x[6])
  );
  OBUF   pixel_x_5_OBUF (
    .I(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(pixel_x[5])
  );
  OBUF   pixel_x_4_OBUF (
    .I(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(pixel_x[4])
  );
  OBUF   pixel_x_3_OBUF (
    .I(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .O(pixel_x[3])
  );
  OBUF   pixel_x_2_OBUF (
    .I(\instance_name/text_top/vga_sync/h_count_reg [2]),
    .O(pixel_x[2])
  );
  OBUF   pixel_x_1_OBUF (
    .I(\instance_name/text_top/vga_sync/h_count_reg [1]),
    .O(pixel_x[1])
  );
  OBUF   pixel_x_0_OBUF (
    .I(\instance_name/text_top/vga_sync/h_count_reg [0]),
    .O(pixel_x[0])
  );
  OBUF   pixel_y_9_OBUF (
    .I(\instance_name/text_top/vga_sync/v_count_reg [9]),
    .O(pixel_y[9])
  );
  OBUF   pixel_y_8_OBUF (
    .I(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .O(pixel_y[8])
  );
  OBUF   pixel_y_7_OBUF (
    .I(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .O(pixel_y[7])
  );
  OBUF   pixel_y_6_OBUF (
    .I(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .O(pixel_y[6])
  );
  OBUF   pixel_y_5_OBUF (
    .I(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .O(pixel_y[5])
  );
  OBUF   pixel_y_4_OBUF (
    .I(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .O(pixel_y[4])
  );
  OBUF   pixel_y_3_OBUF (
    .I(\instance_name/text_top/vga_sync/v_count_reg [3]),
    .O(pixel_y[3])
  );
  OBUF   pixel_y_2_OBUF (
    .I(\instance_name/text_top/vga_sync/v_count_reg [2]),
    .O(pixel_y[2])
  );
  OBUF   pixel_y_1_OBUF (
    .I(\instance_name/text_top/vga_sync/v_count_reg [1]),
    .O(pixel_y[1])
  );
  OBUF   pixel_y_0_OBUF (
    .I(\instance_name/text_top/vga_sync/v_count_reg [0]),
    .O(pixel_y[0])
  );
  OBUF   A_D_OBUF (
    .I(A_D_OBUF_32),
    .O(A_D)
  );
  OBUF   R_D_OBUF (
    .I(R_D_OBUF_34),
    .O(R_D)
  );
  OBUF   W_R_OBUF (
    .I(W_R_OBUF_33),
    .O(W_R)
  );
  OBUF   C_S_OBUF (
    .I(C_S_OBUF_35),
    .O(C_S)
  );
  OBUF   hsync_OBUF (
    .I(\instance_name/text_top/vga_sync/h_sync_reg_30 ),
    .O(hsync)
  );
  OBUF   vsync_OBUF (
    .I(\instance_name/text_top/vga_sync/v_sync_reg_31 ),
    .O(vsync)
  );
  OBUF   cien_OBUF (
    .I(cien_OBUF_848),
    .O(cien)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<22>_rt  (
    .I0(\instance_name/divparpadeo/m [22]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<22>_rt_747 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<21>_rt  (
    .I0(\instance_name/divparpadeo/m [21]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<21>_rt_748 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<20>_rt  (
    .I0(\instance_name/divparpadeo/m [20]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<20>_rt_749 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<19>_rt  (
    .I0(\instance_name/divparpadeo/m [19]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<19>_rt_750 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<18>_rt  (
    .I0(\instance_name/divparpadeo/m [18]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<18>_rt_751 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<17>_rt  (
    .I0(\instance_name/divparpadeo/m [17]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<17>_rt_752 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<16>_rt  (
    .I0(\instance_name/divparpadeo/m [16]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<16>_rt_753 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<15>_rt  (
    .I0(\instance_name/divparpadeo/m [15]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<15>_rt_754 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<14>_rt  (
    .I0(\instance_name/divparpadeo/m [14]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<14>_rt_755 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<13>_rt  (
    .I0(\instance_name/divparpadeo/m [13]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<13>_rt_756 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<12>_rt  (
    .I0(\instance_name/divparpadeo/m [12]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<12>_rt_757 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<11>_rt  (
    .I0(\instance_name/divparpadeo/m [11]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<11>_rt_758 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<10>_rt  (
    .I0(\instance_name/divparpadeo/m [10]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<10>_rt_759 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<9>_rt  (
    .I0(\instance_name/divparpadeo/m [9]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<9>_rt_760 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<8>_rt  (
    .I0(\instance_name/divparpadeo/m [8]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<8>_rt_761 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<7>_rt  (
    .I0(\instance_name/divparpadeo/m [7]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<7>_rt_762 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<6>_rt  (
    .I0(\instance_name/divparpadeo/m [6]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<6>_rt_763 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<5>_rt  (
    .I0(\instance_name/divparpadeo/m [5]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<5>_rt_764 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<4>_rt  (
    .I0(\instance_name/divparpadeo/m [4]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<4>_rt_765 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<3>_rt  (
    .I0(\instance_name/divparpadeo/m [3]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<3>_rt_766 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<2>_rt  (
    .I0(\instance_name/divparpadeo/m [2]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<2>_rt_767 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_cy<1>_rt  (
    .I0(\instance_name/divparpadeo/m [1]),
    .O(\instance_name/divparpadeo/Mcount_m_cy<1>_rt_768 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/divparpadeo/Mcount_m_xor<23>_rt  (
    .I0(\instance_name/divparpadeo/m [23]),
    .O(\instance_name/divparpadeo/Mcount_m_xor<23>_rt_769 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \instance_name/text_top/texto/Mmux_rom_addr751  (
    .I0(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I1(\instance_name/text_top/texto/instrucciones ),
    .I2(\instance_name/text_top/texto/dia ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr596 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr75_283 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \instance_name/text_top/texto/instruc_row12_SW1  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg_4_1_846 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_9_3_832 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg_8_3_833 ),
    .O(N64)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000040 ))
  \instance_name/text_top/texto/instrucciones1  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I4(N64),
    .I5(N40),
    .O(\instance_name/text_top/texto/instrucciones )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \instance_name/text_top/texto/Mmux_rom_addr1121  (
    .I0(\instance_name/text_top/texto/cronometro_cambio1 ),
    .I1(\instance_name/text_top/texto/alarma ),
    .I2(\instance_name/text_top/texto/hora_encabezado11_838 ),
    .I3(\instance_name/text_top/texto/cronometro1_829 ),
    .I4(\instance_name/text_top/texto/numerico_hora ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr112 )
  );
  LUT6 #(
    .INIT ( 64'hBFBFBFFDBFFDBFFD ))
  \instance_name/text_top/texto/alarma3_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_9_2_820 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_8_2_826 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg_7_1_825 ),
    .I3(\instance_name/text_top/vga_sync/h_count_reg_6_1_823 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg_5_1_824 ),
    .I5(\instance_name/text_top/vga_sync/h_count_reg_4_1_822 ),
    .O(N66)
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \instance_name/text_top/texto/alarma3  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg_5_3_841 ),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .I4(\instance_name/text_top/vga_sync/v_count_reg_7_2_843 ),
    .I5(N66),
    .O(\instance_name/text_top/texto/alarma )
  );
  LUT6 #(
    .INIT ( 64'h3320330033333333 ))
  \instance_name/text_top/texto/Mmux_rom_addr74  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr6113 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr5941 ),
    .I5(N68),
    .O(\instance_name/text_top/texto/Mmux_rom_addr72 )
  );
  LUT5 #(
    .INIT ( 32'h00080000 ))
  \instance_name/text_top/texto/Mmux_rom_addr70131  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I4(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6113 )
  );
  LUT5 #(
    .INIT ( 32'h00000020 ))
  \instance_name/text_top/texto/Mmux_rom_addr6131  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr5932 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr70222 ),
    .I3(\instance_name/text_top/texto/pixel_x[9]_PWR_6_o_equal_758_o ),
    .I4(\instance_name/text_top/texto/_n1793 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6131_597 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000700000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4213111  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr592 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr2911 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr593411 ),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr421311 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000100000 ))
  \instance_name/text_top/texto/_n1793<9>1  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_5_2_839 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_4_2_840 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg_6_2_837 ),
    .I3(\instance_name/text_top/vga_sync/h_count_reg_7_2_831 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg_9_4_845 ),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .O(\instance_name/text_top/texto/_n1793 )
  );
  LUT5 #(
    .INIT ( 32'hFCAA00AA ))
  \instance_name/text_top/Mmux_red1  (
    .I0(\instance_name/text_top/blue_graph [0]),
    .I1(N70),
    .I2(\instance_name/text_top/texto/text_on1 ),
    .I3(\instance_name/text_top/text_on ),
    .I4(\instance_name/text_top/texto/font_bit ),
    .O(\instance_name/red_next [0])
  );
  LUT6 #(
    .INIT ( 64'hFF8B000000000000 ))
  \instance_name/text_top/Mmux_red2  (
    .I0(N32),
    .I1(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .I2(N72),
    .I3(\instance_name/text_top/texto/text_on1 ),
    .I4(\instance_name/text_top/text_on ),
    .I5(\instance_name/text_top/texto/font_bit ),
    .O(\instance_name/red_next [1])
  );
  LUT6 #(
    .INIT ( 64'hFEFFFEFE54FF5454 ))
  \instance_name/text_top/texto/Mmux_red_text61_SW3  (
    .I0(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .I1(\instance_name/text_top/texto/heart ),
    .I2(\instance_name/text_top/texto/alarma ),
    .I3(N62),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr4244 ),
    .I5(N32),
    .O(N74)
  );
  LUT5 #(
    .INIT ( 32'hFCAA00AA ))
  \instance_name/text_top/Mmux_green11  (
    .I0(\instance_name/text_top/blue_graph [0]),
    .I1(N74),
    .I2(\instance_name/text_top/texto/text_on1 ),
    .I3(\instance_name/text_top/text_on ),
    .I4(\instance_name/text_top/texto/font_bit ),
    .O(\instance_name/green_next [0])
  );
  LUT6 #(
    .INIT ( 64'hFF00404000004040 ))
  \instance_name/text_top/Mmux_blue23  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [9]),
    .I1(\instance_name/text_top/Fondo/blue_graph<1>3_473 ),
    .I2(\instance_name/text_top/Fondo/blue_graph<1>1_471 ),
    .I3(\instance_name/text_top/Mmux_blue21_481 ),
    .I4(\instance_name/text_top/text_on ),
    .I5(\instance_name/text_top/texto/font_bit ),
    .O(\instance_name/blue_next [1])
  );
  LUT6 #(
    .INIT ( 64'h8888F0FF88880000 ))
  \instance_name/text_top/texto/Mmux_rom_addr6127  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr514 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr5931 ),
    .I2(DatoSegT[6]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr485421 ),
    .I4(\instance_name/text_top/texto/_n1793 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr421311 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6127_593 )
  );
  LUT5 #(
    .INIT ( 32'h00007F00 ))
  \instance_name/text_top/texto/Mmux_rom_addr593611  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/texto/mes1_291 ),
    .I2(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .I3(\instance_name/text_top/texto/alarma ),
    .I4(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr59361 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \instance_name/text_top/texto/Mmux_rom_addr611321_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(N79)
  );
  LUT6 #(
    .INIT ( 64'h2222222200002000 ))
  \instance_name/text_top/texto/Mmux_rom_addr6125  (
    .I0(\instance_name/text_top/texto/numerico_hora ),
    .I1(\instance_name/text_top/texto/cronometro ),
    .I2(N79),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr6124_590 ),
    .I4(\instance_name/text_top/texto/instruc_row3 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr6123_589 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6125_591 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000080000 ))
  \instance_name/text_top/texto/pixel_x[9]_PWR_6_o_equal_758_o<9>1  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_5_2_839 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_4_2_840 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg_6_2_837 ),
    .I3(\instance_name/text_top/vga_sync/h_count_reg_7_2_831 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg_9_4_845 ),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .O(\instance_name/text_top/texto/pixel_x[9]_PWR_6_o_equal_758_o )
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \instance_name/text_top/texto/instruc_row12_SW2  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg_4_1_846 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_8_3_833 ),
    .I2(\instance_name/text_top/vga_sync/v_count_reg_7_2_843 ),
    .O(N81)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000040 ))
  \instance_name/text_top/texto/instruc_row31  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I4(N81),
    .I5(N40),
    .O(\instance_name/text_top/texto/instruc_row3 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \instance_name/text_top/texto/Mmux_rom_addr6135_SW1  (
    .I0(\instance_name/text_top/texto/instrucciones ),
    .I1(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I2(\instance_name/text_top/texto/dia ),
    .O(N84)
  );
  LUT6 #(
    .INIT ( 64'hFFFF3320FFFF332A ))
  \instance_name/text_top/texto/Mmux_rom_addr6136  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr596 ),
    .I1(N84),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr6126_592 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr6115_582 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr612_572 ),
    .I5(N83),
    .O(\instance_name/text_top/texto/rom_addr [6])
  );
  LUT6 #(
    .INIT ( 64'hFF550000FF100000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4853_SW0  (
    .I0(\instance_name/text_top/texto/year ),
    .I1(\instance_name/text_top/texto/hora_encabezado ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4829_625 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4817_616 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr4816_615 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr4828_624 ),
    .O(N86)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAA2A8A0 ))
  \instance_name/text_top/texto/Mmux_rom_addr4854  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr488_608 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4854_643 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4815_614 ),
    .I3(N87),
    .I4(N86),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr487_607 ),
    .O(\instance_name/text_top/texto/rom_addr [5])
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>13_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [1]),
    .I1(\instance_name/text_top/texto/instruc_row12_295 ),
    .I2(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>11_491 ),
    .O(N89)
  );
  LUT6 #(
    .INIT ( 64'hAAFFBBFFAAAFABAF ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>13_SW1  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [1]),
    .I1(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>12_492 ),
    .I2(\instance_name/text_top/texto/heart ),
    .I3(\instance_name/text_top/texto/instruc_row12_295 ),
    .I4(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>11_491 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr112 ),
    .O(N90)
  );
  LUT6 #(
    .INIT ( 64'h57F703F3F7F7F3F3 ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<1>  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [2]),
    .I1(N89),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr75_283 ),
    .I3(N90),
    .I4(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>5 ),
    .I5(N26),
    .O(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<1>_362 )
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>13_SW2  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [0]),
    .I1(\instance_name/text_top/texto/instruc_row12_295 ),
    .I2(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>11_491 ),
    .O(N92)
  );
  LUT6 #(
    .INIT ( 64'hAAFFBBFFAAAFABAF ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>13_SW3  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [0]),
    .I1(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>12_492 ),
    .I2(\instance_name/text_top/texto/heart ),
    .I3(\instance_name/text_top/texto/instruc_row12_295 ),
    .I4(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>11_491 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr112 ),
    .O(N93)
  );
  LUT6 #(
    .INIT ( 64'h57F703F3F7F7F3F3 ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [1]),
    .I1(N92),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr75_283 ),
    .I3(N93),
    .I4(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>5 ),
    .I5(N28),
    .O(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>_361 )
  );
  LUT5 #(
    .INIT ( 32'hFF020000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4838  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4838_630 ),
    .I4(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4839_631 )
  );
  LUT5 #(
    .INIT ( 32'hFCAAFC00 ))
  \instance_name/text_top/texto/Mmux_rom_addr4823  (
    .I0(N96),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4819 ),
    .I2(N95),
    .I3(\instance_name/text_top/texto/instruc_row3 ),
    .I4(\instance_name/text_top/texto/hora_encabezado ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4823_619 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFE0 ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>51_SW2  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/instruc_row121 ),
    .I3(\instance_name/text_top/texto/mes ),
    .I4(\instance_name/text_top/texto/year ),
    .O(N98)
  );
  LUT6 #(
    .INIT ( 64'hFFCEFFCFFFCEFFCE ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>51  (
    .I0(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>21 ),
    .I1(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I2(\instance_name/text_top/texto/instrucciones ),
    .I3(\instance_name/text_top/texto/dia ),
    .I4(N98),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr112 ),
    .O(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>5 )
  );
  LUT6 #(
    .INIT ( 64'hDDDD5151DCCC1000 ))
  \instance_name/text_top/texto/Mmux_rom_addr8018  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/texto/hora_encabezado ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr8018_555 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr7714 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8019_556 )
  );
  LUT6 #(
    .INIT ( 64'hFBFFFFFFFFFFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr7620_SW0  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr7612 ),
    .I5(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(N100)
  );
  LUT6 #(
    .INIT ( 64'hD0D0DCDC1000DCCC ))
  \instance_name/text_top/texto/Mmux_rom_addr7620  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr76135 ),
    .I3(\instance_name/text_top/texto/instruc_row2 ),
    .I4(N100),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr761322 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7623_659 )
  );
  LUT6 #(
    .INIT ( 64'h6666444462224000 ))
  \instance_name/text_top/texto/Mmux_rom_addr8020  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/texto/hora_encabezado ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr8020_557 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr7714 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8021_558 )
  );
  LUT6 #(
    .INIT ( 64'h000000000A0A0800 ))
  \instance_name/text_top/texto/Mmux_rom_addr7623  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(N102),
    .I2(\instance_name/text_top/texto/instruc_row2 ),
    .I3(\instance_name/text_top/texto/instruc_row3 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr7625_660 ),
    .I5(\instance_name/text_top/texto/instruc_row1 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7626_661 )
  );
  LUT6 #(
    .INIT ( 64'h000E006E00000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr3421  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I5(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3423_514 )
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \instance_name/text_top/texto/Mmux_rom_addr4824  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4824_620 )
  );
  LUT5 #(
    .INIT ( 32'h20000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr8011311  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I4(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr30332 )
  );
  LUT6 #(
    .INIT ( 64'h0000000013330000 ))
  \instance_name/text_top/texto/Mmux_rom_addr301311  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/texto/mes1_291 ),
    .I3(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .I4(\instance_name/text_top/texto/alarma ),
    .I5(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr30131 )
  );
  LUT6 #(
    .INIT ( 64'h10F0F0F011FFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr73_SW0  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr422 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr7 ),
    .I4(\instance_name/text_top/texto/instruc_row12_295 ),
    .I5(\instance_name/text_top/texto/hora_encabezado ),
    .O(N68)
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>13_SW4  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [2]),
    .I1(\instance_name/text_top/texto/instruc_row12_295 ),
    .I2(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>11_491 ),
    .O(N104)
  );
  LUT6 #(
    .INIT ( 64'hAAFFBBFFAAAFABAF ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>13_SW5  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [2]),
    .I1(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>12_492 ),
    .I2(\instance_name/text_top/texto/heart ),
    .I3(\instance_name/text_top/texto/instruc_row12_295 ),
    .I4(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>11_491 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr112 ),
    .O(N105)
  );
  LUT6 #(
    .INIT ( 64'h57F703F3F7F7F3F3 ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<2>  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(N104),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr75_283 ),
    .I3(N105),
    .I4(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>5 ),
    .I5(N24),
    .O(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<2>_363 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0F060F000F0 ))
  \instance_name/text_top/texto/Mmux_rom_addr4827  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4826_622 ),
    .I3(N107),
    .I4(\instance_name/text_top/texto/instruc_row12_295 ),
    .I5(\instance_name/text_top/texto/instruc_row3 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4827_623 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \instance_name/text_top/texto/Mmux_rom_addr4825_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(N109)
  );
  LUT6 #(
    .INIT ( 64'hEE00A00000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4825  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I4(N109),
    .I5(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4825_621 )
  );
  LUT3 #(
    .INIT ( 8'h53 ))
  \instance_name/text_top/texto/Mmux_rom_addr75_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(N111)
  );
  LUT6 #(
    .INIT ( 64'h0200464400000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr75  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr712_307 ),
    .I4(N111),
    .I5(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr73 )
  );
  LUT4 #(
    .INIT ( 16'hA7F7 ))
  \instance_name/text_top/texto/Mmux_rom_addr48511_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(N113)
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \instance_name/text_top/texto/Mmux_rom_addr3424  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(N113),
    .I3(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3426_517 )
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \instance_name/text_top/texto/Mmux_rom_addr3420_SW1  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(N120)
  );
  LUT6 #(
    .INIT ( 64'h040415040000FF00 ))
  \instance_name/text_top/texto/Mmux_rom_addr3420  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(N120),
    .I3(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .I4(N119),
    .I5(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3422_513 )
  );
  LUT6 #(
    .INIT ( 64'h8E0088008E000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr3448  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr427 ),
    .I4(\instance_name/text_top/texto/cronometro ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr30131 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3450_540 )
  );
  LUT6 #(
    .INIT ( 64'h2202020220000200 ))
  \instance_name/text_top/texto/Mmux_rom_addr3449  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr34441 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/texto/cronometro ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr30131 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3451_541 )
  );
  LUT5 #(
    .INIT ( 32'h88888000 ))
  Mmux_CS1111 (
    .I0(contador[3]),
    .I1(_n0581),
    .I2(contador[1]),
    .I3(contador[0]),
    .I4(contador[2]),
    .O(Mmux_CS111)
  );
  LUT5 #(
    .INIT ( 32'h007F0000 ))
  \instance_name/text_top/texto/Mmux_rom_addr702251  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .I2(\instance_name/text_top/texto/mes1_291 ),
    .I3(\instance_name/text_top/texto/cronometro1_829 ),
    .I4(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr70225 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000004000 ))
  \instance_name/text_top/texto/instruc_row21  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I4(N64),
    .I5(N40),
    .O(\instance_name/text_top/texto/instruc_row2 )
  );
  LUT6 #(
    .INIT ( 64'hEEEE4E4E55FF55FF ))
  \instance_name/text_top/texto/Mmux_rom_addr7216_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(N115),
    .I3(\instance_name/text_top/texto/alarma ),
    .I4(\instance_name/text_top/texto/pixel_x[9]_PWR_6_o_equal_758_o ),
    .I5(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .O(N124)
  );
  LUT6 #(
    .INIT ( 64'h00000000444400C0 ))
  \instance_name/text_top/texto/Mmux_rom_addr805  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr34441 ),
    .I2(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .I3(N126),
    .I4(\instance_name/text_top/texto/cronometro ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr302 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr806_543 )
  );
  LUT6 #(
    .INIT ( 64'hEEFDCCD5FFFFBBFF ))
  \instance_name/text_top/texto/Mmux_rom_addr7618_SW0  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .O(N130)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \instance_name/text_top/texto/Mmux_rom_addr7618  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I1(N130),
    .I2(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7621 )
  );
  LUT6 #(
    .INIT ( 64'h5000500050CC5000 ))
  \instance_name/text_top/texto/Mmux_rom_addr617  (
    .I0(N132),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr427 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4856 ),
    .I3(\instance_name/text_top/texto/mes ),
    .I4(\instance_name/text_top/texto/year ),
    .I5(N133),
    .O(\instance_name/text_top/texto/Mmux_rom_addr616 )
  );
  LUT6 #(
    .INIT ( 64'h1000F00000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4829  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4811_312 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr427 ),
    .I4(\instance_name/text_top/texto/instruc_row12_295 ),
    .I5(\instance_name/text_top/texto/cronometro ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4829_625 )
  );
  LUT5 #(
    .INIT ( 32'h10101000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4850  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/texto/numerico_hora ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4850_641 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr4847_638 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4852_642 )
  );
  LUT4 #(
    .INIT ( 16'h001F ))
  \instance_name/text_top/texto/Mmux_rom_addr767  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/instruc_row12_295 ),
    .I3(\instance_name/text_top/texto/hora_encabezado ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr768_651 )
  );
  LUT5 #(
    .INIT ( 32'h00000D0F ))
  \instance_name/text_top/texto/Mmux_rom_addr4852  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/instruc_row2 ),
    .I3(\instance_name/text_top/texto/instruc_row12_295 ),
    .I4(\instance_name/text_top/texto/instruc_row3 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4860 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr6117  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr5932 ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr70222 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr593411 ),
    .I4(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .I5(\instance_name/text_top/texto/mes1_291 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6117_584 )
  );
  LUT5 #(
    .INIT ( 32'h055E0D0C ))
  \instance_name/text_top/texto/Mmux_rom_addr7626  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr77_666 )
  );
  LUT5 #(
    .INIT ( 32'h0040000C ))
  \instance_name/text_top/texto/Mmux_rom_addr4823_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(N95)
  );
  LUT3 #(
    .INIT ( 8'h1C ))
  \instance_name/text_top/texto/Mmux_rom_addr8012  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8013_550 )
  );
  LUT4 #(
    .INIT ( 16'h8824 ))
  \instance_name/text_top/texto/Mmux_rom_addr4823_SW1  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(N96)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \instance_name/text_top/texto/Mmux_rom_addr8011  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8012_549 )
  );
  LUT4 #(
    .INIT ( 16'hFCAC ))
  \instance_name/text_top/texto/Mmux_rom_addr71  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7 )
  );
  LUT5 #(
    .INIT ( 32'h00000400 ))
  \instance_name/text_top/texto/Mmux_rom_addr48561  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4856 )
  );
  LUT3 #(
    .INIT ( 8'h0E ))
  \instance_name/text_top/texto/Mmux_rom_addr8026  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8027_563 )
  );
  LUT4 #(
    .INIT ( 16'h1020 ))
  \instance_name/text_top/texto/Mmux_rom_addr4818  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4819 )
  );
  LUT6 #(
    .INIT ( 64'h1414141454144400 ))
  \instance_name/text_top/texto/Mmux_rom_addr6114  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/texto/instruc_row2 ),
    .I4(\instance_name/text_top/texto/instruc_row3 ),
    .I5(\instance_name/text_top/texto/instruc_row1 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6114_581 )
  );
  LUT6 #(
    .INIT ( 64'h0000010F00000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr764  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/mes ),
    .I3(\instance_name/text_top/texto/instruc_row12_295 ),
    .I4(\instance_name/text_top/texto/instrucciones ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr7714 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr763_648 )
  );
  LUT4 #(
    .INIT ( 16'hA800 ))
  \instance_name/text_top/texto/Mmux_rom_addr713  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr59361 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr716 )
  );
  LUT6 #(
    .INIT ( 64'h0000DFFF00000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr729  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I2(\instance_name/text_top/texto/fecha_encabezado2 ),
    .I3(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .I4(\instance_name/text_top/texto/instruc_row3 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr596 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr729_681 )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4251  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr34441 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr59361 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr425 )
  );
  LUT6 #(
    .INIT ( 64'h000000008A000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr77141  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I2(\instance_name/text_top/texto/fecha_encabezado2 ),
    .I3(\instance_name/text_top/texto/mes1_291 ),
    .I4(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .I5(\instance_name/text_top/texto/cronometro ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7714 )
  );
  LUT5 #(
    .INIT ( 32'hBB00BBA0 ))
  \instance_name/text_top/texto/Mmux_rom_addr8017  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/texto/numerico_hora ),
    .I3(\instance_name/text_top/texto/hora_encabezado ),
    .I4(\instance_name/text_top/texto/cronometro ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8018_555 )
  );
  LUT6 #(
    .INIT ( 64'h0888888800000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr702231  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr34211 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr702231_250 ),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I3(\instance_name/text_top/texto/mes1_291 ),
    .I4(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .I5(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr70223 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF0000FFFF8000 ))
  \instance_name/text_top/texto/Mmux_rom_addr8019  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .I3(\instance_name/text_top/texto/mes1_291 ),
    .I4(\instance_name/text_top/texto/hora_encabezado ),
    .I5(\instance_name/text_top/texto/cronometro ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8020_557 )
  );
  LUT5 #(
    .INIT ( 32'h00080000 ))
  \instance_name/text_top/texto/Mmux_rom_addr77  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I4(\instance_name/text_top/texto/fecha_encabezado2 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr79_667 )
  );
  LUT5 #(
    .INIT ( 32'hFDFFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr4827_SW0  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I4(\instance_name/text_top/texto/fecha_encabezado2 ),
    .O(N107)
  );
  LUT6 #(
    .INIT ( 64'hFDFFFFFFFFFFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr3420_SW0  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I5(\instance_name/text_top/texto/fecha_encabezado2 ),
    .O(N119)
  );
  LUT6 #(
    .INIT ( 64'h000000F700000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr42431  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr2911 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr592 ),
    .I2(DatoSegT[4]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4243 )
  );
  LUT3 #(
    .INIT ( 8'h9E ))
  \instance_name/text_top/texto/Mmux_rom_addr7224_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(N135)
  );
  LUT6 #(
    .INIT ( 64'h0000004000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr7224  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(N135),
    .I5(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7225_692 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \instance_name/text_top/texto/Mmux_rom_addr4281  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr428 )
  );
  LUT6 #(
    .INIT ( 64'h1111111100110010 ))
  \instance_name/text_top/texto/Mmux_rom_addr7233  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr7225_692 ),
    .I3(\instance_name/text_top/texto/instruc_row1 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr7233_697 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr7224_691 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7234_698 )
  );
  LUT6 #(
    .INIT ( 64'hCCCC0000CCCC4CCC ))
  \instance_name/text_top/texto/Mmux_rom_addr7216  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/texto/mes1_291 ),
    .I3(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .I4(\instance_name/text_top/texto/cronometro ),
    .I5(N124),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7216_685 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80888080 ))
  \instance_name/text_top/texto/Mmux_rom_addr77211  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .I2(\instance_name/text_top/texto/mes1_291 ),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I4(\instance_name/text_top/texto/fecha_encabezado2 ),
    .I5(\instance_name/text_top/texto/cronometro ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7721 )
  );
  LUT5 #(
    .INIT ( 32'h8E820000 ))
  \instance_name/text_top/texto/Mmux_rom_addr3428  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I4(\instance_name/text_top/texto/hora_encabezado ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3430_520 )
  );
  LUT6 #(
    .INIT ( 64'h0000001000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr61112  (
    .I0(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o1 ),
    .I1(DatoSegT[7]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr482_319 ),
    .I3(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o1 ),
    .I4(DatoSegT[6]),
    .I5(\instance_name/text_top/texto/dia ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6111_288 )
  );
  LUT6 #(
    .INIT ( 64'h0000100000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr341031  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I5(\instance_name/text_top/texto/mes1_291 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr34103 )
  );
  LUT6 #(
    .INIT ( 64'h0D00000000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr485  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr34131 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I5(\instance_name/text_top/texto/year ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr485_605 )
  );
  LUT6 #(
    .INIT ( 64'h0000001000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr48592  (
    .I0(DatoSegT[5]),
    .I1(DatoSegT[6]),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I3(DatoSegT[7]),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I5(\instance_name/text_top/texto/mes ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4859 )
  );
  LUT4 #(
    .INIT ( 16'hFFF7 ))
  \instance_name/text_top/texto/Mmux_rom_addr4837_SW4  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4836 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .O(N142)
  );
  LUT6 #(
    .INIT ( 64'hFFFEFEFE55545454 ))
  \instance_name/text_top/texto/Mmux_red_text61_SW1  (
    .I0(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .I1(\instance_name/text_top/texto/alarma ),
    .I2(\instance_name/text_top/texto/heart ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr111 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr4244 ),
    .I5(N32),
    .O(N70)
  );
  LUT6 #(
    .INIT ( 64'h5504FFFFFFFFFFFF ))
  \instance_name/text_top/texto/Mmux_red_text61_SW0  (
    .I0(\instance_name/divparpadeo/m [22]),
    .I1(\instance_name/parpadeo32_476 ),
    .I2(\instance_name/divparpadeo/m [16]),
    .I3(\instance_name/parpadeo3 ),
    .I4(alarma_signal_IBUF_2),
    .I5(\instance_name/divparpadeo/m [23]),
    .O(N32)
  );
  LUT5 #(
    .INIT ( 32'h82208200 ))
  \_n0581<4>1  (
    .I0(state_reg_FSM_FFd1_139),
    .I1(state_reg_FSM_FFd5_135),
    .I2(state_reg_FSM_FFd4_136),
    .I3(state_reg_FSM_FFd3_137),
    .I4(state_reg_FSM_FFd2_138),
    .O(_n0581)
  );
  LUT5 #(
    .INIT ( 32'h00080000 ))
  \_n0373<4>1  (
    .I0(state_reg_FSM_FFd5_135),
    .I1(state_reg_FSM_FFd2_138),
    .I2(state_reg_FSM_FFd3_137),
    .I3(state_reg_FSM_FFd4_136),
    .I4(state_reg_FSM_FFd1_139),
    .O(_n0373)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \instance_name/text_top/texto/Mmux_rom_addr6128  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6128_594 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \instance_name/text_top/texto/text_on12  (
    .I0(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>21 ),
    .I1(\instance_name/text_top/texto/dia ),
    .I2(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I3(\instance_name/text_top/texto/instruc_row12_295 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr7721 ),
    .O(\instance_name/text_top/texto/text_on1 )
  );
  LUT6 #(
    .INIT ( 64'h00000000FBFFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr4815  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4811_312 ),
    .I4(\instance_name/text_top/texto/mes1_291 ),
    .I5(\instance_name/text_top/texto/instrucciones ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4816_615 )
  );
  LUT6 #(
    .INIT ( 64'h00000000F1FFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr702221  (
    .I0(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o1 ),
    .I1(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o1 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr482_319 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I5(\instance_name/text_top/vga_sync/h_count_reg_6_2_837 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr70222 )
  );
  LUT6 #(
    .INIT ( 64'h888F000000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr6129  (
    .I0(DatoSegT[6]),
    .I1(DatoSegT[5]),
    .I2(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o1 ),
    .I3(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o1 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr5931 ),
    .I5(\instance_name/text_top/vga_sync/h_count_reg_4_2_840 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6129_595 )
  );
  LUT6 #(
    .INIT ( 64'h00000000FFEFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr5121  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr592 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I5(\instance_name/text_top/vga_sync/h_count_reg_4_2_840 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr512 )
  );
  MUXF7   \instance_name/text_top/texto/Mmux_rom_addr6135_SW0  (
    .I0(N145),
    .I1(N146),
    .S(\instance_name/text_top/texto/Mmux_rom_addr6133_599 ),
    .O(N83)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr6135_SW0_F  (
    .I0(\instance_name/text_top/texto/instruc_row3 ),
    .I1(\instance_name/text_top/texto/hora_encabezado ),
    .I2(\instance_name/text_top/texto/instrucciones ),
    .I3(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I4(\instance_name/text_top/texto/dia ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr6134_600 ),
    .O(N145)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \instance_name/text_top/texto/Mmux_rom_addr6135_SW0_G  (
    .I0(\instance_name/text_top/texto/hora_encabezado ),
    .I1(\instance_name/text_top/texto/instrucciones ),
    .I2(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I3(\instance_name/text_top/texto/dia ),
    .I4(\instance_name/text_top/texto/instruc_row3 ),
    .O(N146)
  );
  MUXF7   \instance_name/text_top/texto/Mmux_rom_addr4853_SW1  (
    .I0(N147),
    .I1(N148),
    .S(\instance_name/text_top/texto/Mmux_rom_addr4828_624 ),
    .O(N87)
  );
  LUT6 #(
    .INIT ( 64'hF100F100F100F000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4853_SW1_F  (
    .I0(\instance_name/text_top/texto/year ),
    .I1(\instance_name/text_top/texto/hora_encabezado ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4817_616 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4816_615 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr4860 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr4829_625 ),
    .O(N147)
  );
  LUT3 #(
    .INIT ( 8'hD0 ))
  \instance_name/text_top/texto/Mmux_rom_addr4853_SW1_G  (
    .I0(\instance_name/text_top/texto/year ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4817_616 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4816_615 ),
    .O(N148)
  );
  MUXF7   \instance_name/text_top/texto/Mmux_rom_addr1162  (
    .I0(N149),
    .I1(N150),
    .S(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr116 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000100 ))
  \instance_name/text_top/texto/Mmux_rom_addr1162_F  (
    .I0(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I1(\instance_name/text_top/texto/dia ),
    .I2(\instance_name/text_top/texto/year ),
    .I3(\instance_name/text_top/texto/heart ),
    .I4(\instance_name/text_top/texto/mes ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr112 ),
    .O(N149)
  );
  LUT6 #(
    .INIT ( 64'h000000000000111F ))
  \instance_name/text_top/texto/Mmux_rom_addr1162_G  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I2(\instance_name/text_top/texto/mes ),
    .I3(\instance_name/text_top/texto/year ),
    .I4(\instance_name/text_top/texto/dia ),
    .I5(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .O(N150)
  );
  LUT5 #(
    .INIT ( 32'h2484004C ))
  \instance_name/text_top/texto/Mmux_rom_addr7231  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7232_696 )
  );
  LUT5 #(
    .INIT ( 32'h248C2270 ))
  \instance_name/text_top/texto/Mmux_rom_addr3426  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3428_518 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF96FE ))
  ADLogicTrst2 (
    .I0(state_reg_FSM_FFd2_138),
    .I1(state_reg_FSM_FFd3_137),
    .I2(state_reg_FSM_FFd4_136),
    .I3(state_reg_FSM_FFd5_135),
    .I4(state_reg_FSM_FFd1_139),
    .O(ADLogicTrst1)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \instance_name/text_top/texto/Mmux_rom_addr3415  (
    .I0(\instance_name/text_top/texto/mes ),
    .I1(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I2(\instance_name/text_top/texto/dia ),
    .I3(\instance_name/text_top/texto/instrucciones ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3417_509 )
  );
  LUT5 #(
    .INIT ( 32'h8808880F ))
  Mmux_CS12 (
    .I0(contador[2]),
    .I1(contador[3]),
    .I2(_n0581),
    .I3(_n0518),
    .I4(_n0499),
    .O(Mmux_CS11)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state_reg_FSM_FFd4-In3_SW0  (
    .I0(contador[3]),
    .I1(state_reg_FSM_FFd5_135),
    .O(N153)
  );
  LUT6 #(
    .INIT ( 64'h6640404055505050 ))
  \state_reg_FSM_FFd4-In3  (
    .I0(state_reg_FSM_FFd3_137),
    .I1(state_reg_FSM_FFd1_139),
    .I2(state_reg_FSM_FFd4_136),
    .I3(contador[2]),
    .I4(N153),
    .I5(state_reg_FSM_FFd2_138),
    .O(\state_reg_FSM_FFd4-In3_459 )
  );
  LUT5 #(
    .INIT ( 32'h01111111 ))
  \instance_name/text_top/texto/Mmux_red_text61_SW2  (
    .I0(\instance_name/text_top/texto/alarma ),
    .I1(\instance_name/text_top/texto/heart ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4244 ),
    .I3(alarma_signal_IBUF_2),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr111 ),
    .O(N72)
  );
  LUT6 #(
    .INIT ( 64'hFFFFF111EEEEE000 ))
  \Mmux_state_reg[4]_PWR_12_o_Mux_206_o12  (
    .I0(_n0373),
    .I1(\_n0722<4>1 ),
    .I2(contador[1]),
    .I3(contador[2]),
    .I4(contador[3]),
    .I5(\Mmux_state_reg[4]_PWR_12_o_Mux_206_o1 ),
    .O(\state_reg[4]_PWR_12_o_Mux_206_o )
  );
  LUT5 #(
    .INIT ( 32'h11040A04 ))
  \instance_name/text_top/texto/Mmux_rom_addr3423  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3425 )
  );
  LUT5 #(
    .INIT ( 32'h00400400 ))
  \instance_name/text_top/texto/Mmux_rom_addr7220  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7221_689 )
  );
  LUT4 #(
    .INIT ( 16'hD6C4 ))
  \instance_name/text_top/texto/Mmux_rom_addr4811  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4812_611 )
  );
  LUT4 #(
    .INIT ( 16'h3612 ))
  \instance_name/text_top/texto/Mmux_rom_addr7610  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7611_654 )
  );
  LUT4 #(
    .INIT ( 16'h1022 ))
  \instance_name/text_top/texto/Mmux_rom_addr6118  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6118_585 )
  );
  LUT5 #(
    .INIT ( 32'h00101000 ))
  \instance_name/text_top/texto/Mmux_rom_addr619  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr618_576 )
  );
  LUT4 #(
    .INIT ( 16'hDF28 ))
  \instance_name/text_top/texto/Mmux_rom_addr347  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr348_501 )
  );
  LUT5 #(
    .INIT ( 32'h00180118 ))
  \instance_name/text_top/texto/Mmux_rom_addr724  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr724_677 )
  );
  LUT5 #(
    .INIT ( 32'h06760474 ))
  \state_reg_FSM_FFd4-In4  (
    .I0(contador[2]),
    .I1(contador[3]),
    .I2(state_reg_FSM_FFd2_138),
    .I3(state_reg_FSM_FFd1_139),
    .I4(contador[1]),
    .O(\state_reg_FSM_FFd4-In4_460 )
  );
  LUT6 #(
    .INIT ( 64'h0400000000000000 ))
  \instance_name/text_top/texto/pixel_x[9]_GND_6_o_equal_143_o<9>1  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/pixel_x[9]_GND_6_o_equal_143_o )
  );
  LUT4 #(
    .INIT ( 16'h0828 ))
  \instance_name/text_top/texto/Mmux_rom_addr7623_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .O(N102)
  );
  LUT5 #(
    .INIT ( 32'h25000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr6116  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6116_583 )
  );
  LUT5 #(
    .INIT ( 32'h10000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr741  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr74_293 )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \instance_name/text_top/texto/Mmux_rom_addr8029  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8030_566 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \instance_name/text_top/texto/Mmux_rom_addr618  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr617_575 )
  );
  LUT5 #(
    .INIT ( 32'h00080000 ))
  \instance_name/text_top/texto/Mmux_rom_addr6110  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr619_577 )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \instance_name/text_top/texto/Mmux_rom_addr768  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr769_652 )
  );
  LUT5 #(
    .INIT ( 32'h00020000 ))
  \instance_name/text_top/texto/Mmux_rom_addr7210  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7210_682 )
  );
  LUT5 #(
    .INIT ( 32'h04004004 ))
  \_n0518<4>1  (
    .I0(state_reg_FSM_FFd1_139),
    .I1(state_reg_FSM_FFd3_137),
    .I2(state_reg_FSM_FFd2_138),
    .I3(state_reg_FSM_FFd4_136),
    .I4(state_reg_FSM_FFd5_135),
    .O(_n0518)
  );
  LUT6 #(
    .INIT ( 64'h5551555555555555 ))
  \instance_name/text_top/texto/Mmux_rom_addr8016  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr731 ),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I4(\instance_name/text_top/texto/fecha_encabezado2 ),
    .I5(N38),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8017_554 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF7FFE7F ))
  \instance_name/text_top/texto/Mmux_green_text31_SW0  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(alarma_signal_IBUF_2),
    .O(N62)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAA8AAAAA ))
  \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut<8>  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I1(N44),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[8] )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF7FFFFFFFFF ))
  \instance_name/text_top/vga_sync/v_end_inv1  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [2]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [3]),
    .I2(\instance_name/text_top/vga_sync/v_end<9>1_383 ),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [1]),
    .I4(\instance_name/text_top/vga_sync/v_count_reg [0]),
    .I5(\instance_name/text_top/vga_sync/v_sync_next2 ),
    .O(\instance_name/text_top/vga_sync/v_end_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFEFFFFFFF ))
  \instance_name/text_top/vga_sync/h_end_inv1  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(N44),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .O(\instance_name/text_top/vga_sync/h_end_inv )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAA8AAAAA ))
  \instance_name/text_top/vga_sync/Mcount_h_count_reg_lut<9>  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(N44),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_lut[9] )
  );
  LUT5 #(
    .INIT ( 32'h51757175 ))
  \state_reg_FSM_FFd3-In121  (
    .I0(contador[3]),
    .I1(contador[2]),
    .I2(state_reg_FSM_FFd1_139),
    .I3(contador[1]),
    .I4(contador[0]),
    .O(\state_reg_FSM_FFd3-In12 )
  );
  LUT6 #(
    .INIT ( 64'hA0A8808880888088 ))
  \state_reg_FSM_FFd3-In2  (
    .I0(contador[3]),
    .I1(contador[2]),
    .I2(state_reg_FSM_FFd1_139),
    .I3(state_reg_FSM_FFd2_138),
    .I4(contador[1]),
    .I5(contador[0]),
    .O(\state_reg_FSM_FFd3-In3_451 )
  );
  LUT5 #(
    .INIT ( 32'h11111000 ))
  \state_reg_FSM_FFd1-In11  (
    .I0(state_reg_FSM_FFd4_136),
    .I1(state_reg_FSM_FFd5_135),
    .I2(contador[1]),
    .I3(contador[2]),
    .I4(contador[3]),
    .O(\state_reg_FSM_FFd1-In1 )
  );
  LUT5 #(
    .INIT ( 32'h00080000 ))
  \Mmux_state_reg[4]_PWR_11_o_Mux_204_o111  (
    .I0(state_reg_FSM_FFd1_139),
    .I1(state_reg_FSM_FFd2_138),
    .I2(state_reg_FSM_FFd3_137),
    .I3(state_reg_FSM_FFd5_135),
    .I4(state_reg_FSM_FFd4_136),
    .O(\Mmux_state_reg[4]_PWR_11_o_Mux_204_o11_153 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  ADLogicTrst3 (
    .I0(state_reg_FSM_FFd4_136),
    .I1(state_reg_FSM_FFd5_135),
    .I2(state_reg_FSM_FFd3_137),
    .I3(state_reg_FSM_FFd1_139),
    .I4(state_reg_FSM_FFd2_138),
    .O(ADLogicTrst2_469)
  );
  LUT5 #(
    .INIT ( 32'hB0240000 ))
  \instance_name/text_top/texto/Mmux_rom_addr762  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I4(\instance_name/text_top/texto/instrucciones ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr761_646 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \instance_name/text_top/texto/Mmux_rom_addr809  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8010_547 )
  );
  LUT6 #(
    .INIT ( 64'h00000000FBFFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr8022  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4811_312 ),
    .I4(\instance_name/text_top/texto/mes1_291 ),
    .I5(\instance_name/text_top/texto/dia ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8023 )
  );
  LUT6 #(
    .INIT ( 64'h0002000000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4830  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(\instance_name/text_top/texto/cronometro ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4830_626 )
  );
  LUT6 #(
    .INIT ( 64'h4F0F0F0F40000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4846  (
    .I0(DatoSegT[6]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr485421 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr512 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr422 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr4855 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4847_638 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr761  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4855 ),
    .I4(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr764_301 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr76 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF02000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr711  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr346_254 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr593411 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr74_293 ),
    .I5(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr714_671 )
  );
  LUT6 #(
    .INIT ( 64'h5700000000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr7213_SW0  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr591 ),
    .I1(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o1 ),
    .I2(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o1 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr34211 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr702231_250 ),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(N115)
  );
  LUT6 #(
    .INIT ( 64'h0800000000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr3439  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr592 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr591 ),
    .I2(DatoSegT[7]),
    .I3(DatoSegT[0]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3441_531 )
  );
  LUT6 #(
    .INIT ( 64'h0080000000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr3436  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr2911 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr592 ),
    .I2(DatoSegT[4]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3438_528 )
  );
  LUT6 #(
    .INIT ( 64'hAA80AA80AA80FFFF ))
  Mmux_RD11 (
    .I0(contador[3]),
    .I1(contador[1]),
    .I2(contador[0]),
    .I3(contador[2]),
    .I4(\Mmux_state_reg[4]_PWR_11_o_Mux_204_o11_153 ),
    .I5(_n0345),
    .O(RD)
  );
  LUT6 #(
    .INIT ( 64'hAAEAAAAAAAAAAAAA ))
  \state_reg_FSM_FFd1-In2  (
    .I0(state_reg_FSM_FFd1_139),
    .I1(state_reg_FSM_FFd2_138),
    .I2(contador[3]),
    .I3(state_reg_FSM_FFd3_137),
    .I4(contador[2]),
    .I5(\state_reg_FSM_FFd1-In1 ),
    .O(\state_reg_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'h08022802 ))
  \state_reg__n0314<6>1  (
    .I0(state_reg_FSM_FFd5_135),
    .I1(state_reg_FSM_FFd4_136),
    .I2(state_reg_FSM_FFd2_138),
    .I3(state_reg_FSM_FFd3_137),
    .I4(state_reg_FSM_FFd1_139),
    .O(\state_reg[4]_GND_1_o_Mux_229_o )
  );
  LUT5 #(
    .INIT ( 32'h80088000 ))
  \state_reg__n0314<7>1  (
    .I0(state_reg_FSM_FFd4_136),
    .I1(state_reg_FSM_FFd3_137),
    .I2(state_reg_FSM_FFd5_135),
    .I3(state_reg_FSM_FFd1_139),
    .I4(state_reg_FSM_FFd2_138),
    .O(\state_reg[4]_GND_1_o_Mux_233_o )
  );
  LUT6 #(
    .INIT ( 64'h1000100011111000 ))
  \instance_name/text_top/texto/Mmux_rom_addr59321  (
    .I0(DatoSegT[6]),
    .I1(DatoSegT[5]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4831_292 ),
    .I3(DatoSegT[2]),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr4210 ),
    .I5(DatoSegT[7]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr5932 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8A8A8A9 ))
  \instance_name/text_top/texto/Mmux_rom_addr7226  (
    .I0(DatoSegT[5]),
    .I1(DatoSegT[2]),
    .I2(DatoSegT[4]),
    .I3(DatoSegT[0]),
    .I4(DatoSegT[1]),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr23112 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7227 )
  );
  LUT6 #(
    .INIT ( 64'h1055101010101010 ))
  \instance_name/text_top/texto/Mmux_rom_addr481  (
    .I0(DatoSegT[6]),
    .I1(DatoSegT[4]),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr485421 ),
    .I3(DatoSegT[2]),
    .I4(DatoSegT[5]),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr4831_292 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr48 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \state_reg__n0314<1>1  (
    .I0(state_reg_FSM_FFd5_135),
    .I1(state_reg_FSM_FFd3_137),
    .I2(state_reg_FSM_FFd4_136),
    .I3(state_reg_FSM_FFd1_139),
    .O(\state_reg[4]_GND_1_o_Mux_205_o )
  );
  LUT5 #(
    .INIT ( 32'h00202000 ))
  \state_reg__n0314<5>1  (
    .I0(state_reg_FSM_FFd3_137),
    .I1(state_reg_FSM_FFd1_139),
    .I2(state_reg_FSM_FFd2_138),
    .I3(state_reg_FSM_FFd4_136),
    .I4(state_reg_FSM_FFd5_135),
    .O(\state_reg[4]_GND_1_o_Mux_225_o )
  );
  LUT5 #(
    .INIT ( 32'h02000002 ))
  LecEscLogicTrst5 (
    .I0(state_reg_FSM_FFd2_138),
    .I1(state_reg_FSM_FFd1_139),
    .I2(state_reg_FSM_FFd3_137),
    .I3(state_reg_FSM_FFd4_136),
    .I4(state_reg_FSM_FFd5_135),
    .O(LecEscLogicTrst4)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8AAAAAA ))
  \instance_name/text_top/texto/Mmux_rom_addr3411  (
    .I0(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_104_o ),
    .I1(DatoSegT[6]),
    .I2(DatoSegT[0]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr482_319 ),
    .I4(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o1 ),
    .I5(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_100_o ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3413_505 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \instance_name/text_top/texto/Mmux_rom_addr3444  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr3445_535 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3446_536 )
  );
  LUT6 #(
    .INIT ( 64'h2022202022222222 ))
  \instance_name/text_top/texto/Mmux_rom_addr3417  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(DatoSegT[4]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr34131 ),
    .I4(DatoSegT[7]),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr592 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3419 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr3413  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(\instance_name/text_top/texto/dia ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3415_507 )
  );
  LUT6 #(
    .INIT ( 64'hF2F2FF2FF0F0FF0F ))
  \instance_name/text_top/texto/Mmux_rom_addr805_SW0  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I5(\instance_name/text_top/texto/mes1_291 ),
    .O(N126)
  );
  LUT6 #(
    .INIT ( 64'h0020022000200020 ))
  \Mmux_state_reg[4]_PWR_10_o_Mux_202_o11  (
    .I0(state_reg_FSM_FFd1_139),
    .I1(state_reg_FSM_FFd5_135),
    .I2(state_reg_FSM_FFd3_137),
    .I3(state_reg_FSM_FFd4_136),
    .I4(LecEscLogicTrst3_464),
    .I5(state_reg_FSM_FFd2_138),
    .O(\state_reg[4]_PWR_10_o_Mux_202_o )
  );
  LUT5 #(
    .INIT ( 32'h04140810 ))
  \state_reg__n0314<3>1  (
    .I0(state_reg_FSM_FFd3_137),
    .I1(state_reg_FSM_FFd5_135),
    .I2(state_reg_FSM_FFd4_136),
    .I3(state_reg_FSM_FFd2_138),
    .I4(state_reg_FSM_FFd1_139),
    .O(\state_reg[4]_GND_1_o_Mux_217_o )
  );
  LUT5 #(
    .INIT ( 32'h17C01700 ))
  \instance_name/text_top/texto/Mmux_rom_addr6121  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [3]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/texto/instruc_row3 ),
    .I4(\instance_name/text_top/texto/hora_encabezado ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6121_587 )
  );
  LUT5 #(
    .INIT ( 32'h90088008 ))
  \state_reg__n0314<2>1  (
    .I0(state_reg_FSM_FFd1_139),
    .I1(state_reg_FSM_FFd5_135),
    .I2(state_reg_FSM_FFd3_137),
    .I3(state_reg_FSM_FFd4_136),
    .I4(state_reg_FSM_FFd2_138),
    .O(\state_reg[4]_GND_1_o_Mux_213_o )
  );
  LUT6 #(
    .INIT ( 64'h0000008000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr614  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr592 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr613_573 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFDFFF00FFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr617_SW1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr613_573 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr5951 ),
    .O(N133)
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \instance_name/text_top/texto/Mmux_rom_addr231121  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr23112 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \instance_name/text_top/texto/Mmux_rom_addr70411  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7041 )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \instance_name/text_top/texto/Mmux_rom_addr5911  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr591 )
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  \instance_name/text_top/texto/Mmux_rom_addr343  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr341_497 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr342_498 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \instance_name/text_top/texto/Mmux_rom_addr348  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr349_502 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \instance_name/text_top/texto/Mmux_rom_addr611  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr61 )
  );
  LUT5 #(
    .INIT ( 32'h00080000 ))
  \state_reg__n0314<2>11  (
    .I0(state_reg_FSM_FFd3_137),
    .I1(state_reg_FSM_FFd4_136),
    .I2(state_reg_FSM_FFd5_135),
    .I3(state_reg_FSM_FFd1_139),
    .I4(state_reg_FSM_FFd2_138),
    .O(\state_reg__n0314<2>1_150 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr7611  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I2(\instance_name/text_top/texto/mes1_291 ),
    .I3(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .I4(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr7611_654 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7613 )
  );
  LUT6 #(
    .INIT ( 64'hFBFFAAAAF3FF0000 ))
  \instance_name/text_top/texto/Mmux_rom_addr6124  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr5931 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr485421 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr512 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr70221 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr6124_590 )
  );
  LUT6 #(
    .INIT ( 64'h7000700070707000 ))
  \instance_name/text_top/texto/Mmux_rom_addr349  (
    .I0(DatoSegT[4]),
    .I1(DatoSegT[5]),
    .I2(DatoSegT[0]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr34211 ),
    .I4(DatoSegT[2]),
    .I5(DatoSegT[3]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3410_503 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_464_o1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I1(DatoSegT[6]),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4210 ),
    .I4(DatoSegT[5]),
    .I5(DatoSegT[0]),
    .O(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_464_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_466_o1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I1(DatoSegT[6]),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr34211 ),
    .I4(DatoSegT[5]),
    .I5(DatoSegT[0]),
    .O(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_466_o )
  );
  LUT5 #(
    .INIT ( 32'h8AAAAAAA ))
  \instance_name/text_top/texto/Mmux_rom_addr3437  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr232_311 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr592 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr2911 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3439_529 )
  );
  LUT5 #(
    .INIT ( 32'h9441C114 ))
  \_n0722<4>2  (
    .I0(state_reg_FSM_FFd1_139),
    .I1(state_reg_FSM_FFd3_137),
    .I2(state_reg_FSM_FFd4_136),
    .I3(state_reg_FSM_FFd5_135),
    .I4(state_reg_FSM_FFd2_138),
    .O(\_n0722<4>1 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o11  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4831_292 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 ),
    .O(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o1 )
  );
  LUT6 #(
    .INIT ( 64'h5700000000000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr489  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr4856 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr489_609 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFEFFFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr617_SW0  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr2911 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(N132)
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \instance_name/text_top/texto/Mmux_rom_addr7022321  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr34211 )
  );
  LUT5 #(
    .INIT ( 32'h00080000 ))
  \instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_100_o1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4831_292 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 ),
    .O(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_100_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFA8FF ))
  \instance_name/text_top/texto/Mmux_rom_addr726  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr726_679 )
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  \instance_name/text_top/texto/_n4953_SW0  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'h55551555FFFFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr5141  (
    .I0(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o1 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr4831_292 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr591 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr514 )
  );
  LUT5 #(
    .INIT ( 32'h00080000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4291  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr592 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .O(\instance_name/text_top/texto/GND_6_o_min_c[7]_AND_138_o_mmx_out )
  );
  LUT6 #(
    .INIT ( 64'h0000080008000800 ))
  \instance_name/text_top/texto/Mmux_rom_addr23311  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 ),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr592 ),
    .I2(DatoSegT[7]),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr2331 )
  );
  LUT6 #(
    .INIT ( 64'hF111FFFF00000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr702211  (
    .I0(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o1 ),
    .I1(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o1 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr70221 )
  );
  LUT6 #(
    .INIT ( 64'hF111FFFF00000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr7211  (
    .I0(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o1 ),
    .I1(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o1 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I5(\instance_name/text_top/texto/_n1793 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7211_683 )
  );
  LUT6 #(
    .INIT ( 64'h0000080008000800 ))
  \instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_104_o1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 ),
    .I1(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o1 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .I5(DatoSegT[5]),
    .O(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_104_o )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \instance_name/text_top/texto/Mmux_rom_addr341311  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr34131 )
  );
  LUT6 #(
    .INIT ( 64'h0000000057000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr59511  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr5951 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_463_o1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr4831_292 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .O(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_463_o )
  );
  LUT6 #(
    .INIT ( 64'h0010000000000000 ))
  \instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_462_o1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr4831_292 ),
    .O(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_462_o )
  );
  LUT5 #(
    .INIT ( 32'h00000400 ))
  \instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o11  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .O(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o1 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \instance_name/text_top/texto/Mmux_rom_addr42101  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4210 )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \instance_name/text_top/texto/Mmux_rom_addr4821  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr482_319 )
  );
  LUT6 #(
    .INIT ( 64'h0000000808080808 ))
  \instance_name/text_top/texto/Mmux_rom_addr4835  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4836 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFAA81FFFFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr725  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr23112 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr725_678 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFD5D5FF ))
  \instance_name/text_top/texto/Mmux_rom_addr3443  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr7041 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3445_535 )
  );
  LUT6 #(
    .INIT ( 64'h2020200020202020 ))
  \instance_name/text_top/texto/Mmux_rom_addr7022311  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I2(\instance_name/text_top/texto/Mmux_rom_addr591 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr702231_250 )
  );
  LUT5 #(
    .INIT ( 32'h00040404 ))
  \instance_name/text_top/texto/Mmux_rom_addr611111  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr61111 )
  );
  LUT6 #(
    .INIT ( 64'h0010000000000000 ))
  \instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_465_o1  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr4210 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 ),
    .O(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_465_o )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \instance_name/text_top/texto/Mmux_rom_addr485911  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr2911 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \instance_name/text_top/texto/Mmux_rom_addr48311  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4831_292 )
  );
  LUT5 #(
    .INIT ( 32'h00202020 ))
  \instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o2  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I2(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o1 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .O(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o )
  );
  LUT6 #(
    .INIT ( 64'hAAAAA222AAAAAAAA ))
  \instance_name/text_top/texto/Mmux_rom_addr4848  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr4848_639 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I5(\instance_name/text_top/texto/hora_c[7]_hora_c[7]_OR_457_o1 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4849_640 )
  );
  LUT6 #(
    .INIT ( 64'h000000FC30553000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4837  (
    .I0(N142),
    .I1(N155),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4838_630 )
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \instance_name/text_top/texto/Mmux_rom_addr5921  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr592 )
  );
  LUT6 #(
    .INIT ( 64'h0000000808080808 ))
  \instance_name/text_top/texto/Mmux_rom_addr4854211  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr485421 )
  );
  LUT6 #(
    .INIT ( 64'h0000008080808080 ))
  \instance_name/text_top/texto/GND_6_o_cambio_year[7]_AND_27_o1  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr2911 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .O(\instance_name/text_top/texto/GND_6_o_cambio_year[7]_AND_27_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000800088888 ))
  \instance_name/text_top/texto/Mmux_rom_addr3410  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr3411_504 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAE9FFFFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr342  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr23112 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr341_497 )
  );
  LUT6 #(
    .INIT ( 64'h0000020002000200 ))
  \instance_name/text_top/texto/Mmux_rom_addr59311  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr5931 )
  );
  LUT6 #(
    .INIT ( 64'h0000020002000200 ))
  \instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o2  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_36_q_74 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I3(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o1 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_26_q_69 ),
    .O(\instance_name/text_top/texto/cambio_dia[7]_cambio_dia[7]_OR_102_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000808080808 ))
  \instance_name/text_top/texto/cambio_year[7]_GND_6_o_LessThan_145_o11  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr2911 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_28_q_70 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .O(\instance_name/text_top/texto/cambio_year[7]_GND_6_o_LessThan_145_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFFFFFFF ))
  \instance_name/text_top/texto/Mmux_rom_addr4837_SW0  (
    .I0(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I1(\state_reg[4]_state_reg[4]_DLATCH_32_q_72 ),
    .I2(\state_reg[4]_state_reg[4]_DLATCH_34_q_73 ),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_24_q_68 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_22_q_66 ),
    .I5(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .O(N155)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \instance_name/text_top/vga_sync/Mcount_h_count_reg_cy<7>_rt  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .O(\instance_name/text_top/vga_sync/Mcount_h_count_reg_cy<7>_rt_816 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_8_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg8 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_8_1_817 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_9_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg9 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_9_1_818 )
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_5_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg5 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg_5_1_819 )
  );
  LUT6 #(
    .INIT ( 64'h0444044000000000 ))
  \instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>211  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(\instance_name/text_top/texto/mes1_291 ),
    .O(\instance_name/text_top/texto/bit_addr[2]_inv_1067_OUT<0>21 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_9_2  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg9 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_9_2_820 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_3_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg3 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_3_1_821 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_4_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg4 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_4_1_822 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_6_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg6 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_6_1_823 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_5_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg5 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_5_1_824 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_7_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg7 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_7_1_825 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_8_2  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg8 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_8_2_826 )
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_7_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg7 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg_7_1_827 )
  );
  LUT5 #(
    .INIT ( 32'h51518000 ))
  \instance_name/text_top/texto/Mmux_rom_addr4843  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .I4(\instance_name/text_top/texto/numerico_hora ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr4844_635 )
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_5_2  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg5 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg_5_2_828 )
  );
  LUT6 #(
    .INIT ( 64'h2020080000000000 ))
  \instance_name/text_top/texto/cronometro1_1  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg_7_2_843 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_9_4_845 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr59343 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg_7_3_844 ),
    .I5(\instance_name/text_top/texto/fecha_encabezado2 ),
    .O(\instance_name/text_top/texto/cronometro1_829 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_7_2  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg7 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_7_2_831 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_9_3  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg9 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_9_3_832 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_8_3  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg8 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_8_3_833 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000040 ))
  \instance_name/text_top/texto/instruc_row12_1  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .I1(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg_7_2_843 ),
    .I3(\instance_name/text_top/vga_sync/h_count_reg_9_3_832 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg_8_3_833 ),
    .I5(N40),
    .O(\instance_name/text_top/texto/instruc_row121 )
  );
  LUT6 #(
    .INIT ( 64'h0110001000000000 ))
  \instance_name/text_top/texto/fecha_encabezado_1  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg_7_2_843 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_9_3_832 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg_8_3_833 ),
    .I3(N38),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr731 ),
    .I5(\instance_name/text_top/texto/fecha_encabezado2 ),
    .O(\instance_name/text_top/texto/fecha_encabezado1 )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \instance_name/text_top/texto/mes11_1  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_9_1_818 ),
    .I1(\instance_name/text_top/vga_sync/v_count_reg_5_1_819 ),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [9]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .O(\instance_name/text_top/texto/mes11_836 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_6_2  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg6 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_6_2_837 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \instance_name/text_top/texto/hora_encabezado1_1  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_9_3_832 ),
    .I2(\instance_name/text_top/texto/hora_encabezado1_324 ),
    .I3(\instance_name/text_top/texto/fecha_encabezado2 ),
    .O(\instance_name/text_top/texto/hora_encabezado11_838 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_5_2  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg5 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_5_2_839 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_4_2  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg4 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_4_2_840 )
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_5_3  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg5 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg_5_3_841 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000420040 ))
  \instance_name/text_top/texto/cronometro_cambio_1  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg_9_3_832 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_7_2_831 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg_8_3_833 ),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [8]),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr59343 ),
    .I5(N30),
    .O(\instance_name/text_top/texto/cronometro_cambio1 )
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_7_2  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg7 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg_7_2_843 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_7_3  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg7 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_7_3_844 )
  );
  FDCE   \instance_name/text_top/vga_sync/h_count_reg_9_4  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_h_count_reg9 ),
    .Q(\instance_name/text_top/vga_sync/h_count_reg_9_4_845 )
  );
  FDCE   \instance_name/text_top/vga_sync/v_count_reg_4_1  (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(\instance_name/text_top/vga_sync/pixel_tick_h_end_AND_1_o ),
    .CLR(reset_IBUF_0),
    .D(\instance_name/text_top/vga_sync/Mcount_v_count_reg4 ),
    .Q(\instance_name/text_top/vga_sync/v_count_reg_4_1_846 )
  );
  BUFG   \clockdiv/count_0_BUFG  (
    .O(\clockdiv/count_0_BUFG_51 ),
    .I(\clockdiv/count_0_847 )
  );
  BUFG   cien_OBUF_BUFG (
    .O(cien_OBUF_BUFG_1),
    .I(cien_OBUF_848)
  );
  INV   \instance_name/divparpadeo/Mcount_m_lut<0>_INV_0  (
    .I(\instance_name/divparpadeo/m [0]),
    .O(\instance_name/divparpadeo/Mcount_m_lut [0])
  );
  INV   reset_inv1_INV_0 (
    .I(reset_IBUF_0),
    .O(reset_inv)
  );
  INV   \clockdiv/Mcount_count_0_xor<0>11_INV_0  (
    .I(\clockdiv/count_0_847 ),
    .O(Result)
  );
  INV   \instance_name/text_top/vga_sync/_n00581_INV_0  (
    .I(\instance_name/text_top/vga_sync/mod2_reg_229 ),
    .O(\instance_name/text_top/vga_sync/_n0058 )
  );
  MUXF7   \instance_name/text_top/texto/Mmux_rom_addr7229  (
    .I0(N157),
    .I1(N158),
    .S(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7230 )
  );
  LUT6 #(
    .INIT ( 64'h2828282828202828 ))
  \instance_name/text_top/texto/Mmux_rom_addr7229_F  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\state_reg[4]_state_reg[4]_DLATCH_30_q_71 ),
    .I4(\state_reg[4]_state_reg[4]_DLATCH_23_q_67 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr7227 ),
    .O(N157)
  );
  LUT6 #(
    .INIT ( 64'h080000008A888888 ))
  \instance_name/text_top/texto/Mmux_rom_addr7229_G  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(DatoSegT[7]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr591 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr34211 ),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .O(N158)
  );
  MUXF7   \instance_name/text_top/texto/Mmux_rom_addr728  (
    .I0(N159),
    .I1(N160),
    .S(\instance_name/text_top/texto/mes ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr728_680 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA200020002000 ))
  \instance_name/text_top/texto/Mmux_rom_addr728_F  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr34103 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr726_679 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr34211 ),
    .I5(\instance_name/text_top/texto/Mmux_rom_addr5951 ),
    .O(N159)
  );
  LUT5 #(
    .INIT ( 32'h44444440 ))
  \instance_name/text_top/texto/Mmux_rom_addr728_G  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I1(\instance_name/text_top/texto/Mmux_rom_addr4856 ),
    .I2(DatoSegT[3]),
    .I3(DatoSegT[5]),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr725_678 ),
    .O(N160)
  );
  MUXF7   \instance_name/text_top/texto/Mmux_rom_addr8024  (
    .I0(N1),
    .I1(N162),
    .S(\instance_name/text_top/texto/instruc_row12_295 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr8025_561 )
  );
  LUT6 #(
    .INIT ( 64'h5550444011100440 ))
  \instance_name/text_top/texto/Mmux_rom_addr8024_G  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I2(\instance_name/text_top/vga_sync/v_count_reg [4]),
    .I3(\instance_name/text_top/vga_sync/v_count_reg [5]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(N162)
  );
  MUXF7   \instance_name/text_top/texto/dia1  (
    .I0(N1),
    .I1(N164),
    .S(\instance_name/text_top/texto/mes1_291 ),
    .O(\instance_name/text_top/texto/dia )
  );
  LUT6 #(
    .INIT ( 64'h0400040004100010 ))
  \instance_name/text_top/texto/dia1_G  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg_7_2_843 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_7_2_831 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg_6_2_837 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg_4_2_840 ),
    .I5(\instance_name/text_top/vga_sync/h_count_reg_5_2_839 ),
    .O(N164)
  );
  MUXF7   \instance_name/text_top/texto/Mmux_rom_addr7218  (
    .I0(N165),
    .I1(N1),
    .S(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7219_687 )
  );
  LUT5 #(
    .INIT ( 32'h20000000 ))
  \instance_name/text_top/texto/Mmux_rom_addr7218_F  (
    .I0(\instance_name/text_top/texto/Mmux_rom_addr70222 ),
    .I1(\instance_name/text_top/texto/_n1793 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I3(\instance_name/text_top/texto/Mmux_rom_addr7218_686 ),
    .I4(\instance_name/text_top/texto/Mmux_rom_addr70225 ),
    .O(N165)
  );
  MUXF7   \instance_name/text_top/texto/dia1_1  (
    .I0(N1),
    .I1(N168),
    .S(\instance_name/text_top/texto/mes1_291 ),
    .O(\instance_name/text_top/texto/dia1_830 )
  );
  LUT6 #(
    .INIT ( 64'h0400040004100010 ))
  \instance_name/text_top/texto/dia1_1_G  (
    .I0(\instance_name/text_top/vga_sync/v_count_reg_7_2_843 ),
    .I1(\instance_name/text_top/vga_sync/h_count_reg_7_2_831 ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg_6_2_837 ),
    .I4(\instance_name/text_top/vga_sync/h_count_reg_4_2_840 ),
    .I5(\instance_name/text_top/vga_sync/h_count_reg_5_2_839 ),
    .O(N168)
  );
  MUXF7   \instance_name/text_top/texto/Mmux_rom_addr346  (
    .I0(N1),
    .I1(N170),
    .S(\instance_name/text_top/texto/fecha_encabezado_368 ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr345 )
  );
  LUT6 #(
    .INIT ( 64'h1004040404400044 ))
  \instance_name/text_top/texto/Mmux_rom_addr346_G  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [9]),
    .I1(\instance_name/text_top/vga_sync/h_count_reg [8]),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [7]),
    .O(N170)
  );
  MUXF7   \instance_name/text_top/texto/Mmux_rom_addr7615  (
    .I0(N171),
    .I1(N172),
    .S(\instance_name/text_top/texto/cronometro ),
    .O(\instance_name/text_top/texto/Mmux_rom_addr7618_656 )
  );
  LUT6 #(
    .INIT ( 64'h4400104444444400 ))
  \instance_name/text_top/texto/Mmux_rom_addr7615_F  (
    .I0(\instance_name/text_top/texto/numerico_hora ),
    .I1(\instance_name/text_top/texto/cronometro_cambio_352 ),
    .I2(\instance_name/text_top/texto/alarma ),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I4(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I5(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(N171)
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \instance_name/text_top/texto/Mmux_rom_addr7615_G  (
    .I0(\instance_name/text_top/vga_sync/h_count_reg [5]),
    .I1(\instance_name/text_top/texto/year ),
    .I2(\instance_name/text_top/vga_sync/h_count_reg [6]),
    .I3(\instance_name/text_top/vga_sync/h_count_reg [4]),
    .O(N172)
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h00000000666666666666DC007800000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000010387CFEFEFEFE6C00000000000000007EFFFFFFFFFFFFFFFF7E0000 ),
    .INIT_02 ( 256'h000000003C1818E7E7E73C3C18000000000000000010387CFE7C381000000000 ),
    .INIT_03 ( 256'h000000000000183C3C18000000000000000000003C18187EFFFF7E3C18000000 ),
    .INIT_04 ( 256'h00000000003C664242663C0000000000FFFFFFFFFFFFE7C3C3E7FFFFFFFFFFFF ),
    .INIT_05 ( 256'h0000000078CCCCCCCC78321A0E1E0000FFFFFFFFFFC399BDBD99C3FFFFFFFFFF ),
    .INIT_06 ( 256'h00000000E0F070303030303F333F00000000000018187E183C666666663C0000 ),
    .INIT_07 ( 256'h000000001818DB3CE73CDB1818000000000000C0E6E767636363637F637F0000 ),
    .INIT_08 ( 256'h0000000002060E1E3EFE3E1E0E0602000000000080C0E0F0F8FEF8F0E0C08000 ),
    .INIT_09 ( 256'h000000006666006666666666666600000000000000183C7E1818187E3C180000 ),
    .INIT_0A ( 256'h0000007CC60C386CC6C66C3860C67C00000000001B1B1B1B1B7BDBDBDB7F0000 ),
    .INIT_0B ( 256'h000000307E183C7E1818187E3C18000000000000FEFEFEFE0000000000000000 ),
    .INIT_0C ( 256'h00000000183C7E18181818181818000000000000181818181818187E3C180000 ),
    .INIT_0D ( 256'h0000000000003060FE60300000000000000000000000180CFE0C180000000000 ),
    .INIT_0E ( 256'h0000000000002466FF66240000000000000000000000FEC0C0C0000000000000 ),
    .INIT_0F ( 256'h00000000001038387C7CFEFE000000000000000000FEFE7C7C38381000000000 ),
    .INIT_10 ( 256'h000000001818001818183C3C3C18000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h000000006C6CFE6C6C6CFE6C6C00000000000000000000000000002466666600 ),
    .INIT_12 ( 256'h0000000086C66030180CC6C200000000000018187CC68606067CC0C2C67C1818 ),
    .INIT_13 ( 256'h000000000000000000000060303030000000000076CCCCCCDC76386C6C380000 ),
    .INIT_14 ( 256'h0000000030180C0C0C0C0C0C18300000000000000C18303030303030180C0000 ),
    .INIT_15 ( 256'h00000000000018187E18180000000000000000000000663CFF3C660000000000 ),
    .INIT_16 ( 256'h00000000000000007E0000000000000000000030181818000000000000000000 ),
    .INIT_17 ( 256'h0000000080C06030180C06020000000000000000181800000000000000000000 ),
    .INIT_18 ( 256'h000000007E1818181818187838180000000000007CC6C6E6F6DECEC6C67C0000 ),
    .INIT_19 ( 256'h000000007CC60606063C0606C67C000000000000FEC6C06030180C06C67C0000 ),
    .INIT_1A ( 256'h000000007CC6060606FCC0C0C0FE0000000000001E0C0C0CFECC6C3C1C0C0000 ),
    .INIT_1B ( 256'h0000000030303030180C0606C6FE0000000000007CC6C6C6C6FCC0C060380000 ),
    .INIT_1C ( 256'h00000000780C0606067EC6C6C67C0000000000007CC6C6C6C67CC6C6C67C0000 ),
    .INIT_1D ( 256'h0000000030181800000018180000000000000000001818000000181800000000 ),
    .INIT_1E ( 256'h000000000000007E00007E000000000000000000060C18306030180C06000000 ),
    .INIT_1F ( 256'h000000001818001818180CC6C67C0000000000006030180C060C183060000000 ),
    .INIT_20 ( 256'h00000000C6C6C6C6FEC6C66C38100000000000007CC0DCDEDEDEC6C6C67C0000 ),
    .INIT_21 ( 256'h000000003C66C2C0C0C0C0C2663C000000000000FC666666667C666666FC0000 ),
    .INIT_22 ( 256'h00000000FE6662606878686266FE000000000000F86C6666666666666CF80000 ),
    .INIT_23 ( 256'h000000003A66C6C6DEC0C0C2663C000000000000F06060606878686266FE0000 ),
    .INIT_24 ( 256'h000000003C18181818181818183C000000000000C6C6C6C6C6FEC6C6C6C60000 ),
    .INIT_25 ( 256'h00000000E666666C78786C6666E600000000000078CCCCCC0C0C0C0C0C1E0000 ),
    .INIT_26 ( 256'h00000000C3C3C3C3C3DBFFFFE7C3000000000000FE6662606060606060F00000 ),
    .INIT_27 ( 256'h000000007CC6C6C6C6C6C6C6C67C000000000000C6C6C6C6CEDEFEF6E6C60000 ),
    .INIT_28 ( 256'h00000E0C7CDED6C6C6C6C6C6C67C000000000000F0606060607C666666FC0000 ),
    .INIT_29 ( 256'h000000007CC6C6060C3860C6C67C000000000000E66666666C7C666666FC0000 ),
    .INIT_2A ( 256'h000000007CC6C6C6C6C6C6C6C6C60000000000003C18181818181899DBFF0000 ),
    .INIT_2B ( 256'h000000006666FFDBDBC3C3C3C3C3000000000000183C66C3C3C3C3C3C3C30000 ),
    .INIT_2C ( 256'h000000003C181818183C66C3C3C3000000000000C3C3663C18183C66C3C30000 ),
    .INIT_2D ( 256'h000000003C30303030303030303C000000000000FFC3C16030180C86C3FF0000 ),
    .INIT_2E ( 256'h000000003C0C0C0C0C0C0C0C0C3C00000000000002060E1C3870E0C080000000 ),
    .INIT_2F ( 256'h0000FF00000000000000000000000000000000000000000000000000C66C3810 ),
    .INIT_30 ( 256'h0000000076CCCCCC7C0C78000000000000000000000000000000000000183030 ),
    .INIT_31 ( 256'h000000007CC6C0C0C0C67C0000000000000000007C666666666C786060E00000 ),
    .INIT_32 ( 256'h000000007CC6C0C0FEC67C00000000000000000076CCCCCCCC6C3C0C0C1C0000 ),
    .INIT_33 ( 256'h0078CC0C7CCCCCCCCCCC76000000000000000000F060606060F060646C380000 ),
    .INIT_34 ( 256'h000000003C181818181838001818000000000000E666666666766C6060E00000 ),
    .INIT_35 ( 256'h00000000E6666C78786C666060E00000003C66660606060606060E0006060000 ),
    .INIT_36 ( 256'h00000000DBDBDBDBDBFFE60000000000000000003C1818181818181818380000 ),
    .INIT_37 ( 256'h000000007CC6C6C6C6C67C000000000000000000666666666666DC0000000000 ),
    .INIT_38 ( 256'h001E0C0C7CCCCCCCCCCC76000000000000F060607C6666666666DC0000000000 ),
    .INIT_39 ( 256'h000000007CC60C3860C67C000000000000000000F06060606676DC0000000000 ),
    .INIT_3A ( 256'h0000000076CCCCCCCCCCCC0000000000000000001C3630303030FC3030100000 ),
    .INIT_3B ( 256'h0000000066FFDBDBC3C3C3000000000000000000183C66C3C3C3C30000000000 ),
    .INIT_3C ( 256'h00F80C067EC6C6C6C6C6C6000000000000000000C3663C183C66C30000000000 ),
    .INIT_3D ( 256'h000000000E18181818701818180E000000000000FEC6603018CCFE0000000000 ),
    .INIT_3E ( 256'h0000000070181818180E18181870000000000000181818181800181818180000 ),
    .INIT_3F ( 256'h0000000000FEC6C6C66C381000000000000000000000000000000000DC760000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 9 ),
    .DATA_WIDTH_B ( 0 ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \instance_name/text_top/texto_font_unit/Mram_data  (
    .REGCEA(N1),
    .CLKA(\clockdiv/count_0_BUFG_51 ),
    .ENB(\NLW_instance_name/text_top/texto_font_unit/Mram_data_ENB_UNCONNECTED ),
    .RSTB(\NLW_instance_name/text_top/texto_font_unit/Mram_data_RSTB_UNCONNECTED ),
    .CLKB(\NLW_instance_name/text_top/texto_font_unit/Mram_data_CLKB_UNCONNECTED ),
    .REGCEB(\NLW_instance_name/text_top/texto_font_unit/Mram_data_REGCEB_UNCONNECTED ),
    .RSTA(N1),
    .ENA(N0),
    .DIPA({\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIPA<3>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIPA<2>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIPA<1>_UNCONNECTED 
, N1}),
    .WEA({N1, N1, N1, N1}),
    .DOA({\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<31>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<30>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<29>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<28>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<27>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<26>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<25>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<24>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<23>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<22>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<21>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<20>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<19>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<18>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<17>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<16>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<15>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<14>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<13>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<12>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<11>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<10>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<9>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOA<8>_UNCONNECTED , 
\instance_name/text_top/texto/font_word [7], \instance_name/text_top/texto/font_word [6], \instance_name/text_top/texto/font_word [5], 
\instance_name/text_top/texto/font_word [4], \instance_name/text_top/texto/font_word [3], \instance_name/text_top/texto/font_word [2], 
\instance_name/text_top/texto/font_word [1], \instance_name/text_top/texto/font_word [0]}),
    .ADDRA({\instance_name/text_top/texto/rom_addr [10], \instance_name/text_top/texto/rom_addr [9], \instance_name/text_top/texto/rom_addr [8], 
\instance_name/text_top/texto/rom_addr [7], \instance_name/text_top/texto/rom_addr [6], \instance_name/text_top/texto/rom_addr [5], 
\instance_name/text_top/texto/rom_addr [4], \instance_name/text_top/texto/rom_addr [3], \instance_name/text_top/texto/rom_addr [2], 
\instance_name/text_top/texto/rom_addr [1], \instance_name/text_top/texto/rom_addr [0], 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRA<2>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRA<1>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<13>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<12>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<11>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<10>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<9>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<8>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<7>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<6>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<5>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<4>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<3>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<2>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<1>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<31>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<30>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<29>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<28>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<27>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<26>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<25>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<24>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<23>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<22>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<21>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<20>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<19>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<18>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<17>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<16>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<15>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<14>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<13>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<12>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<11>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<10>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<9>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<8>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<7>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<6>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<5>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<4>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<3>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<2>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<1>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIB<0>_UNCONNECTED })
,
    .DOPA({\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPA<3>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPA<2>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPA<1>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIPB<3>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIPB<2>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIPB<1>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPB<3>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPB<2>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPB<1>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<31>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<30>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<29>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<28>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<27>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<26>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<25>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<24>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<23>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<22>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<21>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<20>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<19>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<18>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<17>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<16>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<15>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<14>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<13>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<12>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<11>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<10>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<9>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<8>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<7>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<6>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<5>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<4>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<3>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<2>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<1>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DOB<0>_UNCONNECTED })
,
    .WEB({\NLW_instance_name/text_top/texto_font_unit/Mram_data_WEB<3>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_WEB<2>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_WEB<1>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_WEB<0>_UNCONNECTED }),
    .DIA({\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<31>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<30>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<29>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<28>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<27>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<26>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<25>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<24>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<23>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<22>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<21>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<20>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<19>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<18>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<17>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<16>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<15>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<14>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<13>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<12>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<11>_UNCONNECTED 
, \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<10>_UNCONNECTED , 
\NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<9>_UNCONNECTED , \NLW_instance_name/text_top/texto_font_unit/Mram_data_DIA<8>_UNCONNECTED , 
N1, N1, N1, N1, N1, N1, N1, N1})
  );
  FDE   DatoDirPrev_6_1 (
    .C(\clockdiv/count_0_BUFG_51 ),
    .CE(reset_inv),
    .D(DatoDirg[6]),
    .Q(DatoDirPrev_6_1_860)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

