`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:07:00 03/14/2016 
// Design Name: 
// Module Name:    contadorCorriente 
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
module contadorCorriente(
    input userOpcUp,
	 input userOpcDown,
    input clk,
    input enable,
	 input rst,
    output reg [3:0] bc
    );
   
	//El funcionamiento de este contador es igual al del modulo contador de frecuencia
	
	reg estado,estado2 = 0;
	
   always @(posedge clk)
      if (rst)
          bc <= 4'd0;
      else begin // Cerrado
			if (enable) begin //
				if (userOpcUp == 1) begin //
					if (estado == 0) begin //
						estado <= 1;
				      if ( bc == 4'd10)
							 bc <= 4'd0;
						else 
							 bc <= bc + 1'b1;
				      end //Cierra linea 38
					else   bc <= bc;
					end //Cierra linea 36
				 end //Cierra linea 37
				else begin//
						estado <=0;
						if (userOpcDown == 1) begin//
								if (estado2 == 0) begin //
									estado2 <=1;
									if ( bc == 4'd0)
										 bc <= 4'd10;
									else
										 bc <= bc - 1'b1;	
									end //Cierra linea 51
								else bc <= bc;
								end //Cierra linea 51
						else estado2 <= 0;
						end // Cierra linea 50
					end //Cierra linea 48
endmodule