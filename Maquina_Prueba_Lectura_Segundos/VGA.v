`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:24:06 04/24/2016 
// Design Name: 
// Module Name:    VGAAA 
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
module VGA(
    input wire clk, reset,
	 input wire [7:0] cambio_dia, cambio_mes, cambio_year, hora_t, hora_c, min_t, min_c, seg_t, seg_c,
	 input wire alarma_signal, 
    output wire hsync, vsync,
	 output wire [9:0] pixel_x, pixel_y,
    output wire [2:0] red,
	 output wire [2:0] green,
	 output wire [1:0] blue
    );
	 
	 wire dclk, parpadeo;
	 
	 wire pixel_tick;
	 reg [2:0] red_reg, green_reg = 3'b010;
	 wire [2:0] red_next, green_next;
	 wire [1:0] blue_next;
	 reg [1:0] blue_reg;

	text_top text_top (
		 .clk(clk), 
		 .reset(reset), 
//		 .text_on(text_on),
		 .cambio_dia(cambio_dia), 
		 .cambio_mes(cambio_mes),  
		 .cambio_year(cambio_year),
		 .hora_t(hora_t), 
		 .hora_c(hora_c), 
		 .min_t(min_t), 
		 .min_c(min_c), 
		 .seg_t(seg_t), 
		 .seg_c(seg_c), 
		 .alarma_signal(alarma_signal), 
		 .parpadeo(parpadeo),
		 .hsync(hsync), 
		 .vsync(vsync), 
		 .pixel_tick(pixel_tick),
		 .pixel_x(pixel_x),
		 .pixel_y(pixel_y),
		 .red(red_next), 
		 .green(green_next), 
		 .blue(blue_next)
		 );
		 
		 // este se quita para la instanciacion, pues el de 50 entrara
		 /*
	clockdiv clockdiv (
		 .clk(clk), 
		 .dclk(dclk)
		 );*/
		 
	divisor divparpadeo (
    .clk(clk), 
    .out_clk(parpadeo)
    );
	 
	 always @(posedge clk)
	if(pixel_tick) begin
		red_reg <= red_next;
		blue_reg <= blue_next;
		green_reg <= green_next;
	end
		
assign red = red_reg;
assign blue = blue_reg;
assign green = green_reg;

endmodule
