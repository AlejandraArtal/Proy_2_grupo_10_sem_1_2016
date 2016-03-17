`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:43:59 03/14/2016 
// Design Name: 
// Module Name:    PWM 
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

module PWM(
//Se definen las entradas y salidas generales del modulo
input opcion,
input userOpcDown,
input userOpcUp,
input clk,
input rst,
output clk_out,
output [7:0] sseg,
output [3:0] an
    );
wire [3:0] bf, bc;

//Se utiliza esta opcion para activar el enable de los contadores, de modo que dependiendo de uno u otro modo se active el de frecuencia o el de ciclo de trabajo
assign opcionf= ~opcion;


// Instanciacion del modulo que cuenta la frecuencia
contadorFrecuencia Modulo1 (
    .userOpcUp(userOpcUp), 
    .userOpcDown(userOpcDown), 
    .clk(clk), 
    .enable(opcionf), 
    .rst(rst), 
    .bf(bf)
    );

// Instanciacion del modulo que modifica el ciclo de trabajo
contadorCorriente Modulo2 (
    .userOpcUp(userOpcUp), 
    .userOpcDown(userOpcDown), 
    .clk(clk), 
    .enable(opcion), 
    .rst(rst), 
    .bc(bc)
    );

// Instanciar el modulo de 7 segmentos
SevenSegment Modulo3 (
    .opcion(opcion), 
    .clk(clk), 
    .an(an), 
    .sseg(sseg), 
    .bf(bf), 
    .bc(bc)
    );

// Instanciar el modulo divisor de frecuencia
FrequencyDivider Modulo4 (
    .clk(clk), 
    .bf(bf), 
    .bc(bc), 
    .clk_out(clk_out), 
    .rst(rst)
    );

endmodule
