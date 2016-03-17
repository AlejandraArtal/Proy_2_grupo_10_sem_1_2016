`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:26 03/10/2016 
// Design Name: 
// Module Name:    Contador 
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
module contadorFrecuencia(
// Se definen las variables de entrada y salida
    input userOpcUp, //Esto indica los botones que presionan los usuarios
	 input userOpcDown,
    input clk,
    input enable,
	 input rst,
    output reg [3:0] bf
    );
   
	// Se definen estas variables para aminorar el efecto del rebote causado por los botones
	reg estado,estado2 = 0;
	
   always @(posedge clk)
      if (rst)
         bf <= 4'b0000;
      else begin
			if (enable) begin //Este enable sera el selector del modo, de modo que cuente solamente si esta activado
				if (userOpcUp == 1) begin
					if (estado == 0) begin
						estado <= 1;
				      if (bf == 4'd8) //Se define la maxima cuenta que tendra el modulo
							bf <= 4'b0000; //Cuando llega a su maxima cuenta, el siguiente toque se devolvera a la cuenta minima
						else 
							bf <= bf + 1'b1; //Cuenta mientras no se haya llegado a la cuenta maxima
				      end
					else  bf <= bf;
					end
					end
				else begin 
						estado <=0;
						if (userOpcDown == 1) begin
								if (estado2 == 0) begin
									estado2 <=1;
									if (bf == 4'b0000)
										bf <= 4'b1000;
									else
										bf <= bf - 1'b1;	//Se disminuye la cuenta si se presiona el boton de bajar por parte del usuario
									end
								else bf <= bf; //Si el enable no esta activado, se guarda el dato que tenia antes el contador
								end
						else estado2 <= 0;
						end
					end

endmodule