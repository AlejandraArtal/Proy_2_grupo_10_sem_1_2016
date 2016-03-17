`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:55:14 03/12/2016 
// Design Name: 
// Module Name:    FrequencyDivider 
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
module FrequencyDivider(clk, bf, bc, clk_out, rst);

	input wire rst;
	input clk;//clk del contador
	reg [13:0] N; //Porque requiero de 12 bits para representar el mas alto de los numeros por los cuales debo dividir, pero en el proceso se suman 2'b
	output reg clk_out = 0; // Este sera el reloj de salida
	reg signed [12:0] contador = 0;
	reg signed [12:0] Div;
	//Dado que el contador que viene de los botones llega a un maximo de 10, requiero de 4 bits para representar las siguientes entradas
	input [3:0]bf; //El conteo que viene desde el aumento de la frecuencia
	input [3:0]bc; //El conteo que viene desde el aumento de la corriente o del ciclo de trabajo


	always @(bf,Div)
		case (bf)	//Aca entra el contador de la frecuencia, que selecciona uno de los valores a continuacion por cada pulso del boton
			10'd1: Div = 3332; //Frecuencia de 30 kHz
			10'd2: Div = 1999; //Frecuencia de 50 kHz
			10'd3: Div = 1332; //Frecuencia de 75 kHz
			10'd4: Div = 999; //Frecuencia de 100 kHz
			10'd5: Div = 799; //Frecuencia de 125 kHz
			10'd6: Div = 665; //Frecuencia de 150 kHz
			10'd7: Div = 570; //Frecuencia de 175 kz
			10'd8: Div = 499; //Frecuencia de 200 kHz
			//Frecuencia de 22,5 kHz
			default: Div = 4444; // Esto para que el numero se pueda representar con 12 bits, y no sea necesario utilizar un registro con muchos valores
		endcase
		
	always @(bc, Div, N)	//Se colocan estos valores de sentencia porque son las variables que se utilizan en el always
		case (bc)
			10'd0:	//En caso de que no se haya presionado el boton de cambio de ciclo de trabajo, la division sera utilizada con el divisor normal
					if (Div ==3332)
						N<=Div;
					else 
						if (Div ==1999)
							N<=Div;
						else 
							if (Div ==1332)
								N<=Div;
							else 
								if (Div ==999)
									N<=Div;
								else 
									if (Div ==799)
										N<=Div;
									else 
										if (Div ==665)
											N<=Div;
										else 
											if (Div ==570)
												N<=Div;
											else 
												if (Div ==499)
													N<=Div;
												else 
													if (Div ==4444)
														N<=Div;
													else 
														N<=4444; //Por si se diera un valor distinto a los especificados anteriormente
														
			10'd1: //Esta representara cuando el ciclo de trabajo es igual al 10%
					if (Div == 3332)
						N<=2999;
					else 
						if (Div ==1999)
							N<=1799;
						else 
							if (Div ==1332)
								N<=1199;
							else 
								if (Div ==999)
									N<=899;
								else 
									if (Div ==799)
										N<=719;
									else 
										if (Div ==665)
											N<=599;
										else 
											if (Div ==570)
												N<=513;
											else 
												if (Div ==499)
													N<=499;
												else 
													if (Div ==4444)
														N<=4000;
													else 
														N<=4000;
		
			10'd2: //Esta representara cuando el ciclo de trabajo es igual al 20%
					if (Div ==3332)
						N<=2666;
					else 
						if (Div ==1999)
							N<=1599;
						else 
							if (Div ==1332)
								N<=1066;
							else 
								if (Div ==999)
									N<=799;
								else 
									if (Div ==799)
										N<=639;
									else 
										if (Div ==665)
											N<=532;
										else 
											if (Div ==570)
												N<=456;
											else 
												if (Div ==499)
													N<=399;
												else 
													if (Div ==4444)
														N<=3555;
													else 
														N<=3555;
			10'd3: //Esta representara cuando el ciclo de trabajo es igual al 30%
					if (Div ==3332)
						N<=2332;
					else 		
						if (Div ==1999)
							N<=1399;
						else	
							if (Div ==1332)
								N<=932;
							else 
								if (Div ==999)
									N<=699;
								else 
									if (Div ==799)
										N<=559;
									else 
										if (Div ==665)
											N<=466;
										else 	
											if (Div ==570)
												N<=399;
											else 	
												if (Div ==499)
													N<=349;
												else 
													if (Div ==4444)
														N<=3111;
													else
														N<=3111;
			10'd4:	//Esta representara cuando el ciclo de trabajo es igual al 40%
					if (Div ==3332)
						N<=1999;
					else 
						if (Div ==1999)
							N<=1199;
						else 
							if (Div ==1332)
								N<=799;
							else 
								if (Div ==999)
									N<=599;
								else 
									if (Div ==799)
										N<=479;
									else 
										if (Div ==665)
											N<=399;
										else 
											if (Div ==570)
												N<=342;
											else 
												if (Div ==499)
													N<=299;
												else 
													if (Div ==4444)
														N<=2666;
													else 
														N<=2666;
			10'd5: //Esta representara cuando el ciclo de trabajo es igual al 50%
					if (Div ==3332)
						N<=1666;
					else 
						if (Div ==1999)
							N<=999;
						else 
							if (Div ==1332)
								N<=666;
							else 
								if (Div ==999)
									N<=500;
								else 
									if (Div ==799)
										N<=400;
									else 
										if (Div ==665)
											N<=333;
										else 
											if (Div ==570)
												N<=285;
											else 
												if (Div ==499)
													N<=250;
												else 
													if (Div ==4444)
														N<=2222;
													else 
														N<=2222;
			10'd6:	//Esta representara cuando el ciclo de trabajo es igual al 60%
					if (Div ==3332)
						N<=1333;
					else 
						if (Div ==1999)
							N<=799;
						else 
							if (Div ==1332)
								N<=533;
							else
								if (Div ==999)
									N<=400;
								else 
									if (Div ==799)
										N<=320;
									else 
										if (Div ==665)
											N<=266;
										else 
											if (Div ==570)
												N<=228;
											else 
												if (Div ==499)
													N<=200;
												else 
													if (Div ==4444)
														N<=1778;
													else
														N<=1778;
			10'd7:	//Esta representara cuando el ciclo de trabajo es igual al 70%
					if (Div ==3332)
						N<=1000;
					else 
						if (Div ==1999)
							N<=1929;
						else 
							if (Div ==1332)
								N<=400;
							else 
								if (Div ==999)
									N<=300;
								else 
									if (Div ==799)
										N<=240;
									else 
										if (Div ==665)
											N<=200;
										else 
											if (Div ==570)
												N<=171;
											else 
												if (Div ==499)
													N<=150;
												else 
													if (Div ==4444)
														N<=1333;
													else 
														N<=1333;		
			10'd8:	//Esta representara cuando el ciclo de trabajo es igual al 80%
					if (Div ==3332)
						N<=666;
					else 
						if (Div ==1999)
							N<=1919;
						else 
							if (Div ==1332)
								N<=266;
							else 
								if (Div ==999)
									N<=200;
								else 
									if (Div ==799)
										N<=160;
									else 
										if (Div ==665)
											N<=133;
										else 
											if (Div ==570)
												N<=114;
											else 
												if (Div ==499)
													N<=100;
												else 
													if (Div ==4444)
														N<=8889;
													else 
														N<=8889;	
			10'd9:	//Esta representara cuando el ciclo de trabajo es igual al 90%
					if (Div ==3332)
						N<=333;
					else 
						if (Div ==1999)
							N<=199;
						else 
							if (Div ==1332)
								N<=133;
							else 
								if (Div ==999)
									N<=100;
								else 
									if (Div ==799)
										N<=80;
									else 
										if (Div ==665)
											N<=67;
										else 
											if (Div ==570)
												N<=57;
											else 
												if (Div ==499)
													N<=50;
												else 
													if (Div ==4444)
														N<=444;
													else 
														N<=444;	

			default: N<=4444;
		endcase	
	always @ (posedge clk)
		if (rst) //Cuando se presiona el boton de reset
			begin 
				contador<=0;	
				clk_out<=0;
			end
		else begin 
			if (bc==10) //Esto para que la señal este siempre en alto
				begin
					contador<=0;
					clk_out<=1;
				end
			else	begin 
					if (contador==Div) //Divide la frecuencia al valor necesario especificado desde el contador de frecuencia
						begin
							contador<=0;
							clk_out<=~clk_out; //condicionar para que sea 1 si se selecciono el dutycycle del 100%
						end
					else begin
						if (contador==N) //Utiliza esta variable para modelar el ciclo de trabajo, de modo que el reloj externo conmute cuando se llegue a dicha cuenta (necesaria para cumplir el porcentaje respectivo del ciclo de trabajo)
							begin
								clk_out <=~clk_out;
								contador<=contador +1'b1;
							end
						else
								contador<=contador +1'b1;
					end
					end
					end

endmodule