`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:29:21 03/14/2016 
// Design Name: 
// Module Name:    prueba 
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
module prueba(
   
		input wire clk,
		input wire [3:0] a, b, c, d,
		output wire [3:0] an,
		output wire [7:0] sseg
	);

	//Declaracion de señales

	//Instanciar el modulo de 7segmentos
	//Envia los datos necesarios
	disp_hex_mux disp_unit
		(.clk(clk), .reset(1'b0),
		.hex3(d), .hex2(c), .hex1(b), .hex0(a),
		.dp_in(4'b1111), .an(an), .sseg(sseg));

endmodule
