`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:42:59 03/14/2016 
// Design Name: 
// Module Name:    PruebaConstantes 
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
module PruebaConstantes(clk, bf, bc, opcion, a, b, c, d
    );
	 //Declaracion de señales
	 input wire [3:0] bf, bc;
	 input clk, opcion;
	 output reg [3:0] a, b, c, d;
	 
	 
	 //Decodificador para decidir que se mostrara en el display de 7segmentos, dependiendo de la cuenta del usuario
		 always @*
		 if (opcion) begin //Si esta activada la opcion de frecuencia ....
					if (bf==1) begin
						d = 4'h0;
						c = 4'h0;
						b = 4'h3;
						a = 4'h0;
						end
					else	begin
							if (bf==2) begin
							d = 4'h0;
							c = 4'h0;
							b = 4'h5;
							a = 4'h0;
							end
							else begin
								if (bf==3) begin
									d = 4'h0;
									c = 4'h0;
									b = 4'h7;
									a = 4'h5;
								end
								else begin								
									if (bf==4) begin
										d = 4'h0;
										c = 4'h1;
										b = 4'h0;
										a = 4'h0;
									end
									else begin
										if (bf==5) begin
											d = 4'h0;
											c = 4'h1;
											b = 4'h2;
											a = 4'h5;
										end
										else begin
											if (bf==6) begin
												d = 4'h0;
												c = 4'h1;
												b = 4'h5;
												a = 4'h0;
											end 
											else begin
												if (bf==7) begin
													d = 4'h0;
													c = 4'h1;
													b = 4'h7;
													a = 4'h5;
												end
												else begin
													if (bf==8) begin
														d = 4'h0;
														c = 4'h2;
														b = 4'h0;
														a = 4'h0;
													end
												end
											end
										end
									end
								end
							end
						end
					end
		else begin
		//  Si esta seleccionado el modo de ciclo de trabajo, se muestran los siguientes valores, dependiendo del valor del contador
			if (bc==1) begin
						d = 4'h0;
						c = 4'h0;
						b = 4'h1;
						a = 4'h0;
						end
					else	begin
						if (bc==2) begin
							d = 4'h0;
							c = 4'h0;
							b = 4'h2;
							a = 4'h0;
							end
							else begin
								if (bc==3) begin
									d = 4'h0;
									c = 4'h0;
									b = 4'h3;
									a = 4'h0;
								end
								else begin
									if (bc==4) begin
										d = 4'h0;
										c = 4'h0;
										b = 4'h4;
										a = 4'h0;
									end
									else begin
										if (bc==5) begin
											d = 4'h0;
											c = 4'h0;
											b = 4'h5;
											a = 4'h0;
										end
										else begin
											if (bc==6) begin
												d = 4'h0;
												c = 4'h0;
												b = 4'h6;
												a = 4'h0;
											end 
											else begin
												if (bc==7) begin
													d = 4'h0;
													c = 4'h0;
													b = 4'h7;
													a = 4'h0;
												end
												else begin
													if (bc==8) begin
														d = 4'h0;
														c = 4'h0;
														b = 4'h8;
														a = 4'h0;
														end
														else begin
															if (bc==9) begin
																d = 4'h0;
																c = 4'h0;
																b = 4'h9;
																a = 4'h0;
															end
															else begin
																if (bc==10) begin
																	d = 4'h0;
																	c = 4'h1;
																	b = 4'h0;
																	a = 4'h0;
																	end
																	else begin 
																		if (bc==0) begin
																			d = 4'h0;
																			c = 4'h0;
																			b = 4'h0;
																			a = 4'h0;
																			end
																		end
																end
															end
														end
													end
												end
											end
										end
									end
								end
				end

endmodule
