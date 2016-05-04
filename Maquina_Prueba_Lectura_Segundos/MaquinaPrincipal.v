`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:29:28 04/24/2016 
// Design Name: 
// Module Name:    MaquinaPrincipal 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MaquinaPrincipal(
		input wire reset,clk, /*UPP, DOWNP, LEFTP,RIGHTP,inter1, inter2, inter3,inter4,*/
		inout [7:0] DatoDir,
		output reg A_D, R_D,W_R, C_S,
		/*output wire dclk, */
		output wire [2:0] red,
		output wire [2:0] green,
		output wire [1:0] blue,
		output wire hsync, vsync,
		input wire alarma_signal,
		output wire [9:0] pixel_x, pixel_y,
		output wire cien
    );
reg RD, WR, AD, CS;
reg [7:0] DatoDirg, DatoDirPrev, DatoDirIn, DatoBasura;
reg [7:0] DatoHoraT, DatoMinT, DatoSegT, DatoHoraC,DatoMinC, DatoSegC, DatoDia, DatoMes, DatoYear;//guardar os valores de lectura
reg LecEsc;
wire [7:0] DatoTiempoOut,DatoFechaOut, DatoCronometroOut;
//wire  A_DTP,A_DFP, A_DCP,W_RTP, W_RFP, W_RCP, flagAT0, flagDT0; 
assign cien = clk;
reg/* flagLectura, FlagEscritura,*/ EnableLeer;


	 
// Instantiate the module
clockdiv clockdiv (
    .clk(clk), 
    .dclk(dclk)
    );
	 
// Instantiate the module
VGA instance_name (
    .clk(dclk), 
    .reset(reset), 
    .cambio_dia(DatoSegT), 
    .cambio_mes(DatoSegT), 
    .cambio_year(DatoSegT), 
    .hora_t(DatoSegT), 
    .hora_c(DatoSegT), 
    .min_t(DatoSegT), 
    .min_c(DatoSegT), 
    .seg_t(DatoSegT), 
    .seg_c(DatoSegT), 
    .alarma_signal(alarma_signal), 
    .hsync(hsync), 
    .vsync(vsync), 
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y), 
    .red(red), 
    .green(green), 
    .blue(blue)
    );


// symbolic state declaration 
localparam [4:0] s0 = 5'b00000,s1 = 5'b00001,s2 = 5'b00010, s3 = 5'b00011,/* s4= 5'b00100,*/ s5= 5'b00101, s6 = 5'b00110, 
				s7 = 5'b00111, s8= 5'b01000,s9= 5'b01001, s10 = 5'b01010,s11 = 5'b01011,s12 = 5'b01100,s13 = 5'b01101,
				s14 = 5'b01110,s15 = 5'b01111,s16 = 5'b10000,s17 = 5'b10001,s18 = 5'b10010,s19 = 5'b10011,s20 = 5'b10100,
				s21 = 5'b10101,s22 = 5'b10110,s23 = 5'b10111,s24 = 5'b11000,s25 = 5'b11001; 
// signal declaration 
	reg [4:0] state_reg , state_next; 
	reg [3:0] contador,contador_next ;
// state register
	always @(posedge dclk, posedge reset) 
		if (reset ==1'b1) begin
			state_reg <= s0;
			A_D <= 8'b0;
			W_R <= 1'b0;
			R_D <= 1'b0;
			C_S <= 1'b0;
			//DatoDirIn <= 8'b0;
			contador <= 4'b0;
			end
		else begin
			state_reg <= state_next;			
			A_D <= AD;
			W_R <= WR;
			R_D <= RD;
			C_S <= CS;
			DatoDirPrev <= DatoDirg;
			//DatoDirIn <= DatoDir;
			contador <= contador_next;
		end
	always @ *//(posedge dclk, posedge reset)
		if (EnableLeer == 1'b1) begin
			DatoDirIn <= DatoDir;
		end
		else begin
			DatoDirIn <= 8'b0;
		end
// next-state logic and output logic 
	always @ * begin
			case (state_reg)
				s0: begin // darle tiempo a AD
					if (contador < 4'b1011) begin
						AD= 1'bz;
						state_next= s0;
						DatoDirg = 8'bz;
						LecEsc = 1'bz;
						WR = 1'b1;
						RD = 1'b1;
						CS = 1'b1;
						contador_next = contador + 4'b1;
						EnableLeer = 1'b0;
					end
					else /*if ((contador >= 4'b1011) ) */begin
						AD= 1'b0;
						state_next= s1;
						DatoDirg = 8'bz;
						LecEsc = 1'bz;
						WR = 1'b1;
						RD = 1'b1;
						CS = 1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
					/*else begin
						AD= 1'b0;
						state_next= s1;
						DatoDirg = 8'bz;
						LecEsc = 1'bz;
						WR = 1'b1;
						RD = 1'b1;
						CS = 1'b1;
						contador = 4'b0;
					end*/
				end
				s1: begin// Asigna la dirección en la que se inicializa el RTC
					if (contador < 4'b0110) begin // tiempo de 50 ns
						state_next = s1;
						AD = 1'b0;
						DatoDirg = 8'hz;
						LecEsc = 1'b0;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador +4'b1;
						EnableLeer = 1'b0;
					end
					else if (((contador >= 4'b110)) && (contador < 4'b1100) ) begin //tiempo de 50 ns
						state_next = s1;
						contador_next = contador +1'b1;
						AD = 1'b0;
						DatoDirg = 8'h2;
						LecEsc = 1'b0;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						EnableLeer = 1'b0;
					end
					else begin
						state_next = s2;
						AD = 1'b0;
						DatoDirg = 8'h2;
						LecEsc = 1'b0;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end 
				s2: begin// RELLENOOOOOO 2, tiempo AD 10ns
					if (contador < 4'b1010) begin// mantener el tiempo en 100ns
						state_next = s2;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'bz;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if ((contador >= 4'b1011))  begin// sino se mantiene el tiempo se pasa al siguiente estado
						state_next = s3;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'bz;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
					else   begin// sino se mantiene el tiempo se pasa al siguiente estado
						state_next = s3;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'bz;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s3: begin// inicializa en add. 2 bit 4 en 1
					if (contador < 4'b0110) begin
						state_next = s3;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'bz;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador +1'b1;
						EnableLeer = 1'b0;
					end
					else if (((contador >= 4'b110)) && (contador < 4'b1100) ) begin
						state_next = s3;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'b00010000;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador +1'b1;
						EnableLeer = 1'b0;
					end
					else begin
						state_next = s5;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'b00010000;//00001000
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s5:begin// RELLEEENOOO 2, tiempo AD
					if (contador < 4'b1011) begin
						state_next = s5;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'bz;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if ((contador >= 4'b1011)) begin
						state_next = s6;
						AD = 1'b0;
						LecEsc = 1'b0;
						DatoDirg = 8'bz;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
						else begin
						state_next = s6;
						AD = 1'b0;
						LecEsc = 1'b0;
						DatoDirg = 8'bz;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s6: begin// Asigna la dirección en la que se inicializa el RTC
					if (contador < 4'b0110) begin // tiempo de 50 ns
						state_next = s6;
						AD = 1'b0;
						DatoDirg = 8'hz;
						LecEsc = 1'b0;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador +1'b1;
						EnableLeer = 1'b0;
					end
					else if (((contador == 4'b110) | | (contador > 4'b110)) && (contador < 4'b1100) ) begin //tiempo de 50 ns
						state_next = s6;
						contador_next = contador +1'b1;
						AD = 1'b0;
						DatoDirg = 8'h2;
						LecEsc = 1'b0;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						EnableLeer = 1'b0;
					end
					else begin
						state_next = s7;
						AD = 1'b0;
						DatoDirg = 8'h2;
						LecEsc = 1'b0;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end 
				s7:begin// tiempo AD
					if (contador < 4'b1011) begin
						state_next = s7;
						AD = 1'b1;
						LecEsc = 1'bz;
						DatoDirg = 8'bz;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if ((contador >= 4'b1011)) begin 
						state_next = s8;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'b00000000;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
					else begin 
						state_next = s8;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'b00000000;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s8:begin// inicialza en add. 2 bit 4 en 0, tiempos escritura dato
					if (contador < 4'b0110) begin
						state_next = s8;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'bz;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if (((contador == 4'b110) | | (contador > 4'b110)) && (contador < 4'b1100) ) begin 
						state_next = s8;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'b00000000;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else begin
						state_next = s9;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'b00000000;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s9: begin // RELLENOOOO 2, tiempo AD
					if (contador < 4'b1011) begin
						state_next = s9;
						AD = 1'b1;
						DatoDirg = 8'hz;
						LecEsc = 1'b0;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = contador +1'b1;
						EnableLeer = 1'b0;
					end
					else if ((contador >= 4'b1011)) begin
						state_next = s10;
						AD = 1'b0;
						DatoDirg = 8'hz;
						LecEsc = 1'b0;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
					else begin
						state_next = s10;
						AD = 1'b0;
						DatoDirg = 8'hz;
						LecEsc = 1'b0;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s10: begin// Direccion Digital Trimming, Tiempo introducir direcciòn
					if (contador < 4'b110) begin
						state_next = s10;
						AD = 1'b0;
						DatoDirg = 8'hz;
						LecEsc = 1'b0;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if (((contador >= 4'b110))&& (contador < 4'b1100) ) begin
						state_next = s10;
						AD = 1'b0;
						DatoDirg = 8'h16;
						LecEsc = 1'b0;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else begin
						state_next = s11;
						AD = 1'b0;
						DatoDirg = 8'h16;
						LecEsc = 1'b1;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s11: begin // tiempo AD
					if (contador < 4'b1011) begin
						state_next = s11;
						AD = 1'b1;
						DatoDirg = 8'dz;
						LecEsc = 1'b0;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if ((contador >= 4'b1011))  begin
						state_next = s12;
						AD = 1'b1;
						DatoDirg = 8'dz;
						LecEsc = 1'b0;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
					else  begin
						state_next = s12;
						AD = 1'b1;
						DatoDirg = 8'dz;
						LecEsc = 1'b0;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s12: begin // dato en D2 para el digital trimming, tiempo introducir dato
					if (contador < 4'b110) begin
						state_next = s12;
						AD = 1'b1;
						DatoDirg = 8'dz;
						LecEsc = 1'b0;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if (((contador == 4'b110) | | (contador > 4'b110)) && (contador < 4'b1100)) begin
						state_next = s12;
						AD = 1'b1;
						DatoDirg = 8'd45;
						LecEsc = 1'b0;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else begin
						state_next = s13;
						AD = 1'b1;
						DatoDirg = 8'd45;
						LecEsc = 1'b0;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s13: begin// tiempo AD
					if (contador < 4'b1011) begin
						AD = 1'b1;
						WR = 1'b1;
						RD = 1'b1;
						DatoDirg = 8'bz;
						CS =1'b1;
						LecEsc = 1'b0;
						contador_next = contador + 1'b1;
						state_next = s13;
						EnableLeer = 1'b0;
					end
					else if ((contador >= 4'b1011))  begin
						AD = 1'b0;
						WR = 1'b1;
						RD = 1'b1;
						DatoDirg = 8'bz;
						LecEsc= 1'b0;
						CS =1'b1;
						contador_next = 4'b0;
						state_next = s14;
						EnableLeer = 1'b0;
					end
					else  begin
						AD = 1'b0;
						WR = 1'b1;
						RD = 1'b1;
						DatoDirg = 8'bz;
						LecEsc= 1'b0;
						CS =1'b1;
						contador_next = 4'b0;
						state_next = s14;
						EnableLeer = 1'b0;
					end
				end
				s14: begin// Direccion en 00 para ingresar el valor del frecuency tuning
					if (contador < 4'b110) begin
						state_next = s14;
						AD = 1'b0;
						DatoDirg = 8'hz;
						LecEsc = 1'bz;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if (((contador >= 4'b110))&& (contador < 4'b1100) ) begin
						state_next = s14;
						AD = 1'b0;
						DatoDirg = 8'h0;
						LecEsc = 1'b0;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else begin
						state_next = s15;
						AD = 1'b0;
						DatoDirg = 8'h0;
						LecEsc = 1'b1;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s15: begin// tiempo AD
					if (contador < 4'b1011) begin
						AD = 1'b1;
						WR = 1'b1;
						RD = 1'b1;
						DatoDirg = 8'bz;
						LecEsc = 1'b0;
						CS =1'b1;
						contador_next = contador + 1'b1;
						state_next = s15;
						EnableLeer = 1'b0;
					end
					else if ((contador >= 4'b1011)) begin
						AD = 1'b0;
						WR = 1'b1;
						RD = 1'b1;
						DatoDirg = 8'bz;
						LecEsc = 1'b0;
						CS =1'b1;
						contador_next = 4'b0;
						state_next = s16;
						EnableLeer = 1'b0;
					end
					else begin
						AD = 1'b0;
						WR = 1'b1;
						RD = 1'b1;
						DatoDirg = 8'bz;
						LecEsc = 1'b0;
						CS =1'b1;
						contador_next = 4'b0;
						state_next = s16;
						EnableLeer = 1'b0;
					end
				end
				s16: begin // ingresar Dato en cero en el frecuency tuning
					if (contador < 4'b110) begin
						state_next = s16;
						AD = 1'b1;
						DatoDirg = 8'dz;
						LecEsc = 1'bz;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if (((contador >= 4'b110)) && (contador < 4'b1100)) begin
						state_next = s16;
						AD = 1'b1;
						DatoDirg = 8'd0;
						LecEsc = 1'b0;
						WR = 1'b0;
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else begin
						state_next = s17;
						AD = 1'b1;
						DatoDirg = 8'd0;
						LecEsc = 1'b0;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s17: begin // RELLENOOO 2, tiempo AD
					if (contador < 4'b1011) begin
						state_next = s17;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'bz;
						WR = 1'b1;// ahora estará la información en la memoria para utilizarse
						RD = 1'b1;
						CS =1'b1;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if ((contador >= 4'b1011)) begin
						state_next = s18;
						AD = 1'b0;
						LecEsc = 1'b0;
						DatoDirg = 8'bz;
						WR = 1'b1;// ahora estará la información en la memoria para utilizarse
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
					else begin
						state_next = s18;
						AD = 1'b0;
						LecEsc = 1'b0;
						DatoDirg = 8'bz;
						WR = 1'b1;// ahora estará la información en la memoria para utilizarse
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s18:begin // ingreso de comando de transferencia para ingresar a memoria de tiempo a leer datos
					if (contador < 4'b110) begin
						state_next = s18;
						AD = 1'b0;
						LecEsc = 1'bz;
						DatoDirg = 8'dz;
						WR = 1'b0;// ahora estará la información en la memoria para utilizarse
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if (((contador >= 4'b110))&& (contador < 4'b1100))  begin
						state_next = s18;
						AD = 1'b0;
						LecEsc = 1'b0;
						DatoDirg = 8'd240;
						WR = 1'b0;// ahora estará la información en la memoria para utilizarse
						RD = 1'b1;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else begin
						state_next = s19;
						AD = 1'b0;
						LecEsc = 1'b0;
						DatoDirg = 8'd240;
						WR = 1'b1;// ahora estará la información en la memoria para utilizarse
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s19: begin // tiempo AD
					if (contador < 4'b1011) begin
						state_next = s19;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'bz;
						WR = 1'b1;// ahora estará la información en la memoria para utilizarse
						RD = 1'b1;
						CS =1'b1;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if ((contador >= 4'b1011)) begin
						state_next = s20;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'bz;
						WR = 1'b1;// ahora estará la información en la memoria para utilizarse
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
					else begin
						state_next = s20;
						AD = 1'b1;
						LecEsc = 1'b0;
						DatoDirg = 8'bz;
						WR = 1'b1;// ahora estará la información en la memoria para utilizarse
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s20: begin // Despues del comando de transferencia lee un dato
					if (contador < 4'b110) begin
						state_next = s20;
						AD = 1'b1;
						DatoDirg = 8'dz;
						LecEsc = 1'b1;
						WR = 1'b1;
						RD = 1'b0;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if (((contador >= 4'b110 )&& contador < 4'b1011)) begin
						state_next = s20;
						AD = 1'b1;
						DatoBasura = DatoDirIn;
						LecEsc = 1'b1;
						WR = 1'b1;
						RD = 1'b0;
						CS =1'b0;
						EnableLeer = 1'b1;
						contador_next = contador +1'b1;
					end
					else begin
						state_next = s21;  ////// SALTOOOOOO (original 52)
						AD = 1'b1;
						DatoBasura = DatoDirIn;
						LecEsc = 1'b1;
						WR = 1'b1;
						RD = 1'b1;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b1;
					end
				end
				s21: begin//tiempo AD
					if (contador < 4'b1011) begin
						state_next = s21;
						AD = 1'b1;
						LecEsc = 1'b0;
						RD = 1'b1;
						WR = 1'b1;
						DatoSegT = 8'bz;
						//flagL = 1'b0;
						CS =1'b1;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if ((contador >= 4'b1011)) begin
						state_next = s22;
						AD = 1'b1;
						LecEsc = 1'b0;
						RD = 1'b1;
						WR = 1'b1;
						DatoSegT = 8'bz;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
					else begin
						state_next = s22;
						AD = 1'b1;
						LecEsc = 1'b0;
						RD = 1'b1;
						WR = 1'b1;
						DatoSegT = 8'bz;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end
				end
				s22:begin//Dirección segundos tiempo
					if (contador < 4'b110) begin
						state_next = s22;
						AD = 1'b0;
						LecEsc = 1'b0;
						RD = 1'b1;
						WR = 1'b0;
						DatoDirg = 8'hz;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else if (((contador >= 4'b110)) && (contador < 4'b1011)) begin
						state_next = s22;
						AD = 1'b0;
						LecEsc = 1'b0;
						RD = 1'b1;
						WR = 1'b0;
						DatoDirg = 8'h21;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b0;
					end
					else begin
						state_next = s23;
						AD = 1'b0;
						LecEsc = 1'b0;
						RD = 1'b1;
						WR = 1'b1;
						DatoDirg = 8'h21;
						CS =1'b1;
						contador_next = 4'b0;
						EnableLeer = 1'b0;
					end	
				end
				s23:begin//tiempo AD
					if (contador < 4'b1011) begin
						state_next = s23;
						AD = 1'b1;
						LecEsc = 1'b0;
						RD = 1'b1;
						WR = 1'b1;
						DatoSegT = 8'bz;
						EnableLeer = 1'b0;
						//flagL = 1'b0;
						CS =1'b1;
						contador_next = contador + 1'b1;
					end
					else if ((contador >= 4'b1011)) begin
						state_next = s23;
						AD = 1'b1;
						LecEsc = 1'b0;
						RD = 1'b1;
						WR = 1'b1;
						DatoSegT = 8'bz;
						EnableLeer = 1'b0;
						CS =1'b1;
						contador_next = 4'b0;
					end
					else begin
						state_next = s25;
						AD = 1'b1;
						LecEsc = 1'b0;
						RD = 1'b1;
						WR = 1'b1;
						DatoSegT = 8'bz;
						EnableLeer = 1'b0;
						CS =1'b1;
						contador_next = 4'b0;
					end
				end
				s25:begin//Obtención segundos Tiempo
					if (contador < 6'b110) begin
						state_next = s25;
						AD = 1'b1;
						LecEsc = 1'bz;
						RD = 1'b0;
						WR = 1'b1;
						DatoSegT = 8'bz;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b1;
					end
					else if (((contador >= 6'b110)) && (contador < 6'b1011)) begin
						state_next = s25;
						AD = 1'b1;
						LecEsc = 1'b1;
						RD = 1'b0;
						WR = 1'b1;
						DatoSegT = DatoDirIn;
						CS =1'b0;
						contador_next = contador + 1'b1;
						EnableLeer = 1'b1;
					end
					else begin
						state_next = s17; /// salto de inicialisación (57 original)
						AD = 1'b1;
						LecEsc = 1'b1;
						RD = 1'b1;
						WR = 1'b1;
						DatoSegT = DatoDirIn;
						CS =1'b1;
						EnableLeer = 1'b1;
						contador_next = 4'b0;
					end
				end
				default begin
					state_next= s0; 
					contador_next = 4'b0;
					RD = 1'b0;
					WR=1'b0;
					CS = 1'b0;
					EnableLeer = 1'b0;
					DatoDirg = 8'h0;
				end
			endcase
		end
		assign DatoDir = (LecEsc) ? 8'bz : DatoDirPrev;
endmodule
