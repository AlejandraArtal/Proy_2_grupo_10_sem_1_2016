`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:47:49 03/14/2016 
// Design Name: 
// Module Name:    SevenSgement 
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
module SevenSegment( 
//Definicion de las entradas y salidas
	input opcion,
	input clk,
	output [3:0] an,
	output [7:0] sseg,
	input [3:0] bf,bc
    );

wire [3:0] a, b, c, d; //Se declaran como cables las variables que entran y salen de distintos modulos

// Se instancia este modulo para enviar al decodificador los distintos valores de las constantes, para seleccionar cual de los valores se mostrara en el display de 7 segmentos
PruebaConstantes Modulo2 (
    .clk(clk), 
    .bf(bf), 
    .bc(bc), 
    .opcion(opcion), // Utiliza el modo de seleccion de frecuencia o corriente para saber que dato se debe decodificar
    .a(a), 
    .b(b), 
    .c(c), 
    .d(d)
    );

	 
// Instancia el modulo que multiplexa las salidas a los distintos display
prueba Modulo1 (
    .clk(clk), 
    .a(a), 
    .b(b), 
    .c(c), 
    .d(d), 
    .an(an), 
    .sseg(sseg)
    );
	 

endmodule
