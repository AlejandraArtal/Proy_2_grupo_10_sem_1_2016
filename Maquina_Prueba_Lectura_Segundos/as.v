module texto
   (
    input wire clk,
    input wire [9:0] pixel_x, pixel_y,
	 input wire alarma_signal, parpadeo, 
	 input wire [7:0] cambio_dia, cambio_mes, cambio_year, hora_t, seg_t, hora_c, min_c, min_t, seg_c, //para la simulacion hasta el 31 ocupo 5 bits
    output wire text_on,
	 output reg [2:0] red_text,
	 output reg [2:0] green_text,
	 output reg [1:0] blue_text
   );

  // signal declaration
   wire [10:0] rom_addr;
   reg [6:0] char_addr, char_addr_fecha_encabezado, char_addr_dia, char_addr_instruc, char_addr_instruc_row1, char_addr_heart,
				char_addr_mes, char_addr_year, char_addr_instruc_row2, char_addr_instruc_row3, char_addr_hora_encabezado, char_addr_cronometro,
				char_addr_numerico_hora, char_addr_cronometro_cambio, char_addr_bola, char_addr_alarma; //7 bits que generaran el codigo ASCII
   reg [3:0] row_addr;
   wire [3:0] row_addr_fecha_encabezado, row_addr_dia, row_addr_instruc, row_addr_instruc_row1, row_addr_heart,
				row_addr_mes, row_addr_year, row_addr_instruc_row2, row_addr_instruc_row3, row_addr_hora_encabezado,
				row_addr_cronometro, row_addr_numerico_hora, row_addr_cronometro_cambio, row_addr_alarma, row_addr_bola;
   reg [2:0] bit_addr;
   wire [2:0] bit_addr_fecha_encabezado, bit_addr_dia, bit_addr_instruc, bit_addr_instruc_row1, bit_addr_heart,
				bit_addr_mes, bit_addr_year, bit_addr_instruc_row2, bit_addr_instruc_row3, bit_addr_hora_encabezado,
				bit_addr_cronometro, bit_addr_numerico_hora, bit_addr_cronometro_cambio, bit_addr_alarma, bit_addr_bola;
   wire [7:0] font_word;
   wire font_bit, fecha_encabezado, dia, instrucciones, instruc_row1, instruc_row2, instruc_row3, mes, year, hora_encabezado, cronometro,
				numerico_hora, cronometro_cambio, alarma, bola, heart;
   // instantiate font ROM
   font_rom font_unit
      (.clk(clk), .addr(rom_addr), .data(font_word));

	 
	 //Crear modulos para cada espacio en la VGA
	 //------------------------------------------------------------
	 
	 //Para este encabezado, cada cuadricula sera del doble del tamaño normal: 8x16
	 // es decir, sera de 16*32. 16 en x y 32 en y
	 // en 640 pixeles caben 40 tiles, y en 480 pixeles caben 15 tiles
	 
	assign fecha_encabezado = (pixel_y[9:5]==1) && (13<=pixel_x[9:4] && pixel_x[9:4]<=27); //Se define el tamaño
	//del contenido en la cantidad de bits que se toma, y se define en cual cuadricula se desea imprimir
	//En este caso X se limita de 0 a 11 porque se imprimiran 12 caracteres en dicho espacio
   assign row_addr_fecha_encabezado = pixel_y[4:1]; //Para escalar a 16 x 32 pixeles
   assign bit_addr_fecha_encabezado = pixel_x[3:1];
	
	always@* 
	//Imprime desde el pixel 224 hasta el 416
		case (pixel_x[9:4]) //Esto depende de la definicion de pixeles por cuadricula que se haya especificado
		//se debe ver cuales son los pixeles que me dan el numero de filas
		//por el momento se definira en el borde
			6'hd: char_addr_fecha_encabezado = 7'h00; //
			6'he: char_addr_fecha_encabezado = 7'h44; // D
			6'hf: char_addr_fecha_encabezado = 7'h69; // i
			6'h10: char_addr_fecha_encabezado = 7'h61; // a
			6'h11: char_addr_fecha_encabezado = 7'h00; // 
			6'h12: char_addr_fecha_encabezado = 7'h00; // 
			6'h13: char_addr_fecha_encabezado = 7'h4d; // M
			6'h14: char_addr_fecha_encabezado = 7'h65; // e
			6'h15: char_addr_fecha_encabezado = 7'h73; // s
			6'h16: char_addr_fecha_encabezado = 7'h00; //
			6'h17: char_addr_fecha_encabezado = 7'h00; // 
			6'h18: char_addr_fecha_encabezado = 7'h41; // A 
			6'h19: char_addr_fecha_encabezado = 7'h01; // ñ
			6'h1a: char_addr_fecha_encabezado = 7'h6f; // o
			default:
				char_addr_fecha_encabezado = 7'h00;
		endcase
		
		
		/////----------------------------- Parametros de dia, mes y año
		
		//****************Estos cambian segun los datos de los registros provenientes del RTC
		
	assign dia = (pixel_y[9:5]==2) && (13<=pixel_x[9:4] && pixel_x[9:4]<=17);
   assign row_addr_dia = pixel_y[4:1]; //Para escalar a 16 x 32 pixeles
   assign bit_addr_dia = pixel_x[3:1];
	/*
	always@* 
		case (pixel_x[9:4]) //Esto depende de la definicion de pixeles por cuadricula que se haya especificado
		//se debe ver cuales son los pixeles que me dan el numero de filas
		//por el momento se definira en el borde
			6'hd: char_addr_dia = 7'h00; // 
			6'he: char_addr_dia = 7'h30; // 0
			6'hf: char_addr_dia = 7'h30; // 0
			default:
				char_addr_dia = 7'h00;
		endcase*/
	//Estructura para probar el codigo anterior con switches
	
	always @*
		if (pixel_x[9:4]==6'hd) begin
			char_addr_dia = 7'h00;
		end
		else if (pixel_x[9:4]==6'he)
		begin 
			if (cambio_dia==4'h1||cambio_dia==4'h2||cambio_dia==4'h3||cambio_dia==4'h4||cambio_dia==4'h5||cambio_dia==4'h6||cambio_dia==4'h7||cambio_dia==4'h8||cambio_dia==4'h9)
				char_addr_dia = 7'h30; //El primer digito sera 0
			else if (cambio_dia==8'h10||cambio_dia==8'h11||cambio_dia==8'h12||cambio_dia==8'h13||cambio_dia==8'h14||cambio_dia==8'h15||cambio_dia==8'h16||cambio_dia==8'h17||cambio_dia==8'h18||cambio_dia==8'h19)
				char_addr_dia = 7'h31; //El primer digito sera 1
			else if (cambio_dia==8'h20||cambio_dia==8'h21||cambio_dia==8'h22||cambio_dia==8'h23||cambio_dia==8'h24||cambio_dia==8'h25||cambio_dia==8'h26||cambio_dia==8'h27||cambio_dia==8'h28||cambio_dia==8'h29)	
				char_addr_dia = 7'h32; //El primer digito sera 2
			else if (cambio_dia==8'h30||cambio_dia==8'h31)	
				char_addr_dia = 7'h33; //El primer digito sera 3
			else char_addr_dia = 7'h30; //Imprime cero
		end
		else if (pixel_x[9:4]==6'hf)
		begin 
			if (cambio_dia==4'h1||cambio_dia==8'h11||cambio_dia==8'h21||cambio_dia==8'h31)
				char_addr_dia = 7'h31; //El segundo digito sera 1
			else if (cambio_dia==4'h2||cambio_dia==8'h12||cambio_dia==8'h22)
				char_addr_dia = 7'h32; //El segundo digito sera 2
			else if (cambio_dia==4'h3||cambio_dia==8'h13||cambio_dia==8'h23)
				char_addr_dia = 7'h33; //El segundo digito sera 3
			else if (cambio_dia==4'h4||cambio_dia==8'h14||cambio_dia==8'h24)
				char_addr_dia = 7'h34; //El segundo digito sera 4
			else if (cambio_dia==4'h5||cambio_dia==8'h15||cambio_dia==8'h25)
				char_addr_dia = 7'h35; //El segundo digito sera 5
			else if (cambio_dia==4'h6||cambio_dia==8'h16||cambio_dia==8'h26)
				char_addr_dia = 7'h36; //El segundo digito sera 6
			else if (cambio_dia==4'h7||cambio_dia==8'h17||cambio_dia==8'h27)
				char_addr_dia = 7'h37; //El segundo digito sera 7
			else if (cambio_dia==4'h8||cambio_dia==8'h18||cambio_dia==8'h28)
				char_addr_dia = 7'h38; //El segundo digito sera 8
			else if (cambio_dia==4'h9||cambio_dia==8'h19||cambio_dia==8'h29)
				char_addr_dia = 7'h39; //El segundo digito sera 9		
			else char_addr_dia = 7'h30; //El segundo digito sera 0, cuando es 10, 20 o 30
		end
		else char_addr_dia = 7'h00;
		
	
	//****************mes	
	assign mes = (pixel_y[9:5]==2) && (18<=pixel_x[9:4] && pixel_x[9:4]<=22);
   assign row_addr_mes = pixel_y[4:1]; //Para escalar a 16 x 32 pixeles
   assign bit_addr_mes = pixel_x[3:1];
	
	always@* 
	if (pixel_x[9:4]==6'h13) begin
		if (cambio_mes==8'h10||cambio_mes==8'h11||cambio_mes==8'h12)
			char_addr_mes = 7'h31; // 1
		else char_addr_mes = 7'h30; // Imprime 0 al primer digito de todos los meses
	end
	else if(pixel_x[9:4]==6'h14) begin
		if(cambio_mes==8'h10)
			char_addr_mes = 7'h30;
		else if (cambio_mes==4'h1||cambio_mes==8'h11)
			char_addr_mes = 7'h31;
		else if (cambio_mes==4'h2||cambio_mes==8'h12)
			char_addr_mes = 7'h32; // 2
		else if (cambio_mes==4'h3)
			char_addr_mes = 7'h33; //3
		else if (cambio_mes==4'h4)
			char_addr_mes = 7'h34; //4
		else if (cambio_mes==4'h5)
			char_addr_mes = 7'h35; //5
		else if (cambio_mes==4'h6)
			char_addr_mes = 7'h36; //6
		else if (cambio_mes==4'h7)
			char_addr_mes = 7'h37; //7
		else if (cambio_mes==4'h8)
			char_addr_mes = 7'h38; //8
		else 
			char_addr_mes = 7'h39; //De lo contrario es el mes 9 
	end
	else char_addr_mes = 7'h00; //if pixel_x==6'h12||pixel_x==6'h15
		
	assign year = (pixel_y[9:5]==2) && (23<=pixel_x[9:4] && pixel_x[9:4]<=27);
   assign row_addr_year = pixel_y[4:1]; //Para escalar a 16 x 32 pixeles
   assign bit_addr_year = pixel_x[3:1];
	
	always @*
		if (pixel_x[9:4]==6'h17)
			char_addr_year = 7'h32; //2
		else if (pixel_x[9:4]==6'h19) begin
			if (cambio_year>=4'h0&&cambio_year<=4'h9)
				char_addr_year = 7'h30; //0
			else if (cambio_year>=8'h10&&cambio_year<=8'h19)
				char_addr_year = 7'h31; //1
			else if (cambio_year>=8'h20&&cambio_year<=8'h29)
				char_addr_year = 7'h32; //2
			else if (cambio_year>=8'h30&&cambio_year<=8'h39)
				char_addr_year = 7'h33; //3
			else if (cambio_year>=8'h40&&cambio_year<=8'h49)
				char_addr_year = 7'h34; //4
			else if (cambio_year>=8'h50&&cambio_year<=8'h59)
				char_addr_year = 7'h35; //5
			else if (cambio_year>=8'h60&&cambio_year<=8'h69)
				char_addr_year = 7'h36; //6
			else if (cambio_year>=8'h70&&cambio_year<=8'h79)
				char_addr_year = 7'h37; //7
			else if (cambio_year>=8'h80&&cambio_year<=8'h89)
				char_addr_year = 7'h38; //8
			else char_addr_year = 7'h39; //9
		end
		else if (pixel_x[9:4]==6'h1a) begin //Ultimo digito del año
			if (cambio_year==4'h1||cambio_year==8'h11||cambio_year==8'h21||cambio_year==8'h31||cambio_year==8'h41||cambio_year==8'h51||cambio_year==8'h61||cambio_year==8'h71||cambio_year==8'h81||cambio_year==8'h91)
				char_addr_year = 7'h31; //El segundo digito sera 1
			else if (cambio_year==4'h2||cambio_year==8'h12||cambio_year==8'h22||cambio_year==8'h32||cambio_year==8'h42||cambio_year==8'h52||cambio_year==8'h62||cambio_year==8'h72||cambio_year==8'h82||cambio_year==8'h92)
				char_addr_year = 7'h32; //El segundo digito sera 2
			else if (cambio_year==4'h3||cambio_year==8'h13||cambio_year==8'h23||cambio_year==8'h33||cambio_year==8'h43||cambio_year==8'h53||cambio_year==8'h63||cambio_year==8'h73||cambio_year==8'h83||cambio_year==8'h93)
				char_addr_year = 7'h33; //El segundo digito sera 3
			else if (cambio_year==4'h4||cambio_year==8'h14||cambio_year==8'h24||cambio_year==8'h34||cambio_year==8'h44||cambio_year==8'h54||cambio_year==8'h64||cambio_year==8'h74||cambio_year==8'h84||cambio_year==8'h94)
				char_addr_year = 7'h34; //El segundo digito sera 4
			else if (cambio_year==4'h5||cambio_year==8'h15||cambio_year==8'h25||cambio_year==8'h35||cambio_year==8'h45||cambio_year==8'h55||cambio_year==8'h65||cambio_year==8'h75||cambio_year==8'h85||cambio_year==8'h95)
				char_addr_year = 7'h35; //El segundo digito sera 5
			else if (cambio_year==4'h6||cambio_year==8'h16||cambio_year==8'h26||cambio_year==8'h36||cambio_year==8'h46||cambio_year==8'h56||cambio_year==8'h66||cambio_year==8'h76||cambio_year==8'h86||cambio_year==8'h96)
				char_addr_year = 7'h36; //El segundo digito sera 6
			else if (cambio_year==4'h7||cambio_year==8'h17||cambio_year==8'h27||cambio_year==8'h37||cambio_year==8'h47||cambio_year==8'h57||cambio_year==8'h67||cambio_year==8'h77||cambio_year==8'h87||cambio_year==8'h97)
				char_addr_year = 7'h37; //El segundo digito sera 7
			else if (cambio_year==4'h8||cambio_year==8'h18||cambio_year==8'h28||cambio_year==8'h38||cambio_year==8'h48||cambio_year==8'h58||cambio_year==8'h68||cambio_year==8'h78||cambio_year==8'h88||cambio_year==8'h98)
				char_addr_year = 7'h38; //El segundo digito sera 8
			else if (cambio_year==4'h9||cambio_year==8'h19||cambio_year==8'h29||cambio_year==8'h39||cambio_year==8'h49||cambio_year==8'h59||cambio_year==8'h69||cambio_year==8'h79||cambio_year==8'h89||cambio_year==8'h99)
				char_addr_year = 7'h39; //El segundo digito sera 9		
			else char_addr_year = 7'h30; //El segundo digito sera 0, cuando es 00, 10, 20, 30, 40, 50, 60, 70, 80 o 90
		end
		else if (pixel_x[9:4]==6'h1b)
			char_addr_year = 7'h00;
		else char_addr_year = 7'h30; //Se imprime 0 en la posicion h18
		
		
		///Modulo de instrucciones
	assign instrucciones = (2<=pixel_x[9:3] && pixel_x[9:3]<=30) && (pixel_y[9:4]==24); //Esta se dividira en tiles de 8x16
	//Caben 80 cuadriculas en x y 30 en y
   assign row_addr_instruc = pixel_y[3:0];
   assign bit_addr_instruc = pixel_x[2:0];
   always @* begin
      case (pixel_x[7:3]) //hasta el pixel 128 en X
         // row 1
         4'h3: char_addr_instruc = 7'h49; // I
         4'h4: char_addr_instruc = 7'h6e; // n
         4'h5: char_addr_instruc = 7'h73; // s
         4'h6: char_addr_instruc = 7'h74; // t 
         4'h7: char_addr_instruc = 7'h72; // r
         4'h8: char_addr_instruc = 7'h75; // u
         4'h9: char_addr_instruc = 7'h63; // c
         4'ha: char_addr_instruc = 7'h63; // c
         4'hb: char_addr_instruc = 7'h69; // i
         4'hc: char_addr_instruc = 7'h6f; // o
         4'hd: char_addr_instruc = 7'h6e; // n 
         4'he: char_addr_instruc = 7'h65; // e
         4'hf: char_addr_instruc = 7'h73; // s
         5'h10: char_addr_instruc = 7'h3a; // :
         5'h11: char_addr_instruc = 7'h00; //
         5'h12: char_addr_instruc = 7'h00; //
			default:
					char_addr_instruc = 7'h00;
      endcase
	end
	
		//--------Primera linea de instrucciones
	
	assign instruc_row1 = (2<=pixel_x[9:3] && pixel_x[9:3]<=30) && (pixel_y[9:4]==25); //Esta se dividira en tiles de 8x16
	//Caben 80 cuadriculas en x y 30 en y
   assign row_addr_instruc_row1 = pixel_y[3:0];
   assign bit_addr_instruc_row1 = pixel_x[2:0];
   always @* begin
      case (pixel_x[9:3]) //hasta el pixel 128 en X
         // row 1
         4'h3: char_addr_instruc_row1 = 7'h50; // P
         4'h4: char_addr_instruc_row1 = 7'h72; // r
         4'h5: char_addr_instruc_row1 = 7'h6f; // o
         4'h6: char_addr_instruc_row1 = 7'h67; // g
			4'h7: char_addr_instruc_row1 = 7'h72; // r
			4'h8: char_addr_instruc_row1 = 7'h61; // a
			4'h9: char_addr_instruc_row1 = 7'h6d; // m
			4'ha: char_addr_instruc_row1 = 7'h61; // a
			4'hb: char_addr_instruc_row1 = 7'h72; // r
         4'hc: char_addr_instruc_row1 = 7'h00; // 
         4'hd: char_addr_instruc_row1 = 7'h48; // H
         4'he: char_addr_instruc_row1 = 7'h6f; // o
         4'hf: char_addr_instruc_row1 = 7'h72; // r
         5'h10: char_addr_instruc_row1 = 7'h61; // a
         5'h11: char_addr_instruc_row1 = 7'h00; // 
         5'h12: char_addr_instruc_row1 = 7'h3d; // =
         5'h13: char_addr_instruc_row1 = 7'h00; // 
         5'h14: char_addr_instruc_row1 = 7'h54; // T
         5'h15: char_addr_instruc_row1 = 7'h31; // 1
         5'h16: char_addr_instruc_row1 = 7'h30; // 0
			default:
				char_addr_instruc_row1 = 7'h00;
      endcase
	end
	
	//------------Segunda fila de instrucciones
	

	assign instruc_row2 = (2<=pixel_x[9:3] && pixel_x[9:3]<=30) && (pixel_y[9:4]==26); //Esta se dividira en tiles de 8x16
	//Caben 80 cuadriculas en x y 30 en y
   assign row_addr_instruc_row2 = pixel_y[3:0];
   assign bit_addr_instruc_row2 = pixel_x[2:0];
   always @* begin
      case (pixel_x[9:3]) //hasta el pixel 128 en X
         // row 1
         4'h3: char_addr_instruc_row2 = 7'h50; // P
         4'h4: char_addr_instruc_row2 = 7'h72; // r
         4'h5: char_addr_instruc_row2 = 7'h6f; // o
         4'h6: char_addr_instruc_row2 = 7'h67; // g
			4'h7: char_addr_instruc_row2 = 7'h72; // r
			4'h8: char_addr_instruc_row2 = 7'h61; // a
			4'h9: char_addr_instruc_row2 = 7'h6d; // m
			4'ha: char_addr_instruc_row2 = 7'h61; // a
			4'hb: char_addr_instruc_row2 = 7'h72; // r
         4'hc: char_addr_instruc_row2 = 7'h00; // 
         4'hd: char_addr_instruc_row2 = 7'h46; // F
         4'he: char_addr_instruc_row2 = 7'h65; // e
         4'hf: char_addr_instruc_row2 = 7'h63; // c
         5'h10: char_addr_instruc_row2 = 7'h68; // h
         5'h11: char_addr_instruc_row2 = 7'h61; // a
         5'h12: char_addr_instruc_row2 = 7'h00; // 
         5'h13: char_addr_instruc_row2 = 7'h3d; // =
         5'h14: char_addr_instruc_row2 = 7'h00; // 
         5'h15: char_addr_instruc_row2 = 7'h54; // T
         5'h16: char_addr_instruc_row2 = 7'h39; // 9 
			default
				char_addr_instruc_row2 = 7'h00;
      endcase
	end
	

//3 fila de instrucciones	
	assign instruc_row3 = (2<=pixel_x[9:3] && pixel_x[9:3]<=30) && (pixel_y[9:4]==27); //Esta se dividira en tiles de 8x16
	//Caben 80 cuadriculas en x y 30 en y
   assign row_addr_instruc_row3 = pixel_y[3:0];
   assign bit_addr_instruc_row3 = pixel_x[2:0];
   always @* begin
      case (pixel_x[9:3]) //hasta el pixel 128 en X
         // row 1
         4'h3: char_addr_instruc_row3 = 7'h50; // P
         4'h4: char_addr_instruc_row3 = 7'h72; // r
         4'h5: char_addr_instruc_row3 = 7'h6f; // o
         4'h6: char_addr_instruc_row3 = 7'h67; // g
			4'h7: char_addr_instruc_row3 = 7'h72; // r
			4'h8: char_addr_instruc_row3 = 7'h61; // a
			4'h9: char_addr_instruc_row3 = 7'h6d; // m
			4'ha: char_addr_instruc_row3 = 7'h61; // a
			4'hb: char_addr_instruc_row3 = 7'h72; // r
         4'hc: char_addr_instruc_row3 = 7'h00; // 
         4'hd: char_addr_instruc_row3 = 7'h43; // C
         4'he: char_addr_instruc_row3 = 7'h72; // r
         4'hf: char_addr_instruc_row3 = 7'h6f; // o
         5'h10: char_addr_instruc_row3 = 7'h6e; // n
         5'h11: char_addr_instruc_row3 = 7'h6f; // o
			5'h12: char_addr_instruc_row3 = 7'h6d; // m
         5'h13: char_addr_instruc_row3 = 7'h65; // e
         5'h14: char_addr_instruc_row3 = 7'h74; // t
         5'h15: char_addr_instruc_row3 = 7'h72; // r
         5'h16: char_addr_instruc_row3 = 7'h6f; // o
         5'h17: char_addr_instruc_row3 = 7'h00; // 
         5'h18: char_addr_instruc_row3 = 7'h3d; // =
         5'h19: char_addr_instruc_row3 = 7'h00; // 
         5'h1a: char_addr_instruc_row3 = 7'h56; // V
         5'h1b: char_addr_instruc_row3 = 7'h39; // 9
			default
				char_addr_instruc_row3 = 7'h00;
      endcase
	end
	
	//************ Modulo para la hora
	
	assign hora_encabezado = (pixel_y[9:5]==5) && (1<=pixel_x[9:4] && pixel_x[9:4]<=16); //Se define el tamaño
	//del contenido en la cantidad de bits que se toma, y se define en cual cuadricula se desea imprimir
	//En este caso X se limita de 0 a 11 porque se imprimiran 12 caracteres en dicho espacio
   assign row_addr_hora_encabezado = pixel_y[4:1]; //Para escalar a 16 x 32 pixeles
   assign bit_addr_hora_encabezado = pixel_x[3:1];
	
	always@* 
	//Imprime desde el pixel 224 hasta el 416
		case (pixel_x[9:4]) //Esto depende de la definicion de pixeles por cuadricula que se haya especificado
		//se debe ver cuales son los pixeles que me dan el numero de filas
		//por el momento se definira en el borde
			5'h1: char_addr_hora_encabezado = 7'h00; //
			5'h2: char_addr_hora_encabezado = 7'h48; //H
			5'h3: char_addr_hora_encabezado = 7'h6f; // o
			5'h4: char_addr_hora_encabezado = 7'h72; // r
			5'h5: char_addr_hora_encabezado = 7'h61; // a
			5'h6: char_addr_hora_encabezado = 7'h00; // 
			5'h7: char_addr_hora_encabezado = 7'h00; // 
			5'h8: char_addr_hora_encabezado = 7'h4d; // M
			5'h9: char_addr_hora_encabezado = 7'h69; // i
			5'ha: char_addr_hora_encabezado = 7'h6e; // n
			5'hb: char_addr_hora_encabezado = 7'h00; //
			5'hc: char_addr_hora_encabezado = 7'h00; // 
			5'hd: char_addr_hora_encabezado = 7'h53; // S 
			5'he: char_addr_hora_encabezado = 7'h65; // e
			5'hf: char_addr_hora_encabezado = 7'h67; // g
			5'h10: char_addr_hora_encabezado = 7'h00; // 
			default:
				char_addr_hora_encabezado = 7'h00;
		endcase
		
		//***********Cambio de horas, minutos y segundos
		assign numerico_hora = (pixel_y[9:5]==6) && (1<=pixel_x[9:4] && pixel_x[9:4]<=16);
		assign row_addr_numerico_hora = pixel_y[4:1]; //Para escalar a 16 x 32 pixeles
		assign bit_addr_numerico_hora = pixel_x[3:1];
		
		always@* 
		
		if (pixel_x[9:4]==5'h5||pixel_x[9:4]==5'hb) //Donde se imprimen dos puntos
			char_addr_numerico_hora = 7'h3a;
		else if(pixel_x[9:4]==5'h2) begin //Digitos
			//Sera 0 cuando la hora es de 0 a 9
			//Sera 1 cuando la hora es de 10 a 19
			//Sera 2 cuando la hora es de 20 a 23
			if(hora_t>=4'h0&&hora_t<=4'h9) begin
				char_addr_numerico_hora = 7'h30;
			end
			else if(hora_t>=8'h10&&hora_t<=8'h19) begin
				char_addr_numerico_hora = 7'h31; //1
			end
			else char_addr_numerico_hora = 7'h32; //Si la hora es de 20 a 23
		end
		else if(pixel_x[9:4]==5'h3) begin
		// son 8 casos y un else, uno para cada digito
			if(hora_t==4'h1||hora_t==8'h11||hora_t==8'h21)
				char_addr_numerico_hora = 7'h31; //1
			else if(hora_t==4'h2||hora_t==8'h12||hora_t==8'h22)
				char_addr_numerico_hora = 7'h32; //2
			else if(hora_t==4'h3||hora_t==8'h13||hora_t==8'h23)
				char_addr_numerico_hora = 7'h33; //3
			else if(hora_t==4'h4||hora_t==8'h14)
				char_addr_numerico_hora = 7'h34; //4
			else if(hora_t==4'h5||hora_t==8'h15)
				char_addr_numerico_hora = 7'h35; //5
			else if(hora_t==4'h6||hora_t==8'h16)
				char_addr_numerico_hora = 7'h36; //6
			else if(hora_t==4'h7||hora_t==8'h17)
				char_addr_numerico_hora = 7'h37; //7
			else if(hora_t==4'h8||hora_t==8'h18)
				char_addr_numerico_hora = 7'h38; //8
			else if(hora_t==8'h20||hora_t==8'h10)
				char_addr_numerico_hora = 7'h30; //0
			else char_addr_numerico_hora = 7'h39; //9
		end
		else if(pixel_x[9:4]==5'h8) begin //Primer digito
		
			//es 0 si es de 0 a 9
			//es 1 si es de 10 a 19
			//es 2 si es de 20 a 29
			//es 3 si es de 30 a 39
			//es 4 si es de 40 a 49
			//es 5 si es de 50 a 59
			//5 if's y un else	
			
			if (min_t>=4'h0&&min_t<=4'h9)
				char_addr_numerico_hora = 7'h30; //0
			else if (min_t>=8'h10&&min_t<=8'h19)
				char_addr_numerico_hora = 7'h31; //1
			else if (min_t>=8'h20&&min_t<=8'h29)
				char_addr_numerico_hora = 7'h32; //2
			else if (min_t>=8'h30&&min_t<=8'h39)
				char_addr_numerico_hora = 7'h33; //3
			else if (min_t>=8'h40&&min_t<=8'h49)
				char_addr_numerico_hora = 7'h34; //4
			else char_addr_numerico_hora = 7'h35; //5
		end
		else if(pixel_x[9:4]==5'h9) begin
			if (min_t==4'h1||min_t==8'h11||min_t==8'h21||min_t==8'h31||min_t==8'h41||min_t==8'h51)
				char_addr_numerico_hora = 7'h31; //El segundo digito sera 1
			else if (min_t==4'h2||min_t==8'h12||min_t==8'h22||min_t==8'h32||min_t==8'h42||min_t==8'h52)
				char_addr_numerico_hora = 7'h32; //El segundo digito sera 2
			else if (min_t==4'h3||min_t==8'h13||min_t==8'h23||min_t==8'h33||min_t==8'h43||min_t==8'h53)
				char_addr_numerico_hora = 7'h33; //El segundo digito sera 3
			else if (min_t==4'h4||min_t==8'h14||min_t==8'h24||min_t==8'h34||min_t==8'h44||min_t==8'h54)
				char_addr_numerico_hora = 7'h34; //El segundo digito sera 4
			else if (min_t==4'h5||min_t==8'h15||min_t==8'h25||min_t==8'h35||min_t==8'h45||min_t==8'h55)
				char_addr_numerico_hora = 7'h35; //El segundo digito sera 5
			else if (min_t==4'h6||min_t==8'h16||min_t==8'h26||min_t==8'h36||min_t==8'h46||min_t==8'h56)
				char_addr_numerico_hora = 7'h36; //El segundo digito sera 6
			else if (min_t==4'h7||min_t==8'h17||min_t==8'h27||min_t==8'h37||min_t==8'h47||min_t==8'h57)
				char_addr_numerico_hora = 7'h37; //El segundo digito sera 7
			else if (min_t==4'h8||min_t==8'h18||min_t==8'h28||min_t==8'h38||min_t==8'h48||min_t==8'h58)
				char_addr_numerico_hora = 7'h38; //El segundo digito sera 8
			else if (min_t==4'h9||min_t==8'h19||min_t==8'h29||min_t==8'h39||min_t==8'h49||min_t==8'h59)
				char_addr_numerico_hora = 7'h39; //El segundo digito sera 9		
			else char_addr_numerico_hora = 7'h30; //El segundo digito sera 0, cuando es 00, 10, 20, 30, 40 o 50
		end
		else if(pixel_x[9:4]==5'he) begin
			if (seg_t>=4'h0&&seg_t<=4'h9)
				char_addr_numerico_hora = 7'h30; //0
			else if (seg_t>=8'h10&&seg_t<=8'h19)
				char_addr_numerico_hora = 7'h31; //1
			else if (seg_t>=8'h20&&seg_t<=8'h29)
				char_addr_numerico_hora = 7'h32; //2
			else if (seg_t>=8'h30&&seg_t<=8'h39)
				char_addr_numerico_hora = 7'h33; //3
			else if (seg_t>=8'h40&&seg_t<=8'h49)
				char_addr_numerico_hora = 7'h34; //4
			else char_addr_numerico_hora = 7'h35; //5
		end
		else if(pixel_x[9:4]==5'hf) begin //segundo digito de los segundos
		if (seg_t==4'h1||seg_t==8'h11||seg_t==8'h21||seg_t==8'h31||seg_t==8'h41||seg_t==8'h51)
				char_addr_numerico_hora = 7'h31; //El segundo digito sera 1
			else if (seg_t==4'h2||seg_t==8'h12||seg_t==8'h22||seg_t==8'h32||seg_t==8'h42||seg_t==8'h52)
				char_addr_numerico_hora = 7'h32; //El segundo digito sera 2
			else if (seg_t==4'h3||seg_t==8'h13||seg_t==8'h23||seg_t==8'h33||seg_t==8'h43||seg_t==8'h53)
				char_addr_numerico_hora = 7'h33; //El segundo digito sera 3
			else if (seg_t==4'h4||seg_t==8'h14||seg_t==8'h24||seg_t==8'h34||seg_t==8'h44||seg_t==8'h54)
				char_addr_numerico_hora = 7'h34; //El segundo digito sera 4
			else if (seg_t==4'h5||seg_t==8'h15||seg_t==8'h25||seg_t==8'h35||seg_t==8'h45||seg_t==8'h55)
				char_addr_numerico_hora = 7'h35; //El segundo digito sera 5
			else if (seg_t==4'h6||seg_t==8'h16||seg_t==8'h26||seg_t==8'h36||seg_t==8'h46||seg_t==8'h56)
				char_addr_numerico_hora = 7'h36; //El segundo digito sera 6
			else if (seg_t==4'h7||seg_t==8'h17||seg_t==8'h27||seg_t==8'h37||seg_t==8'h47||seg_t==8'h57)
				char_addr_numerico_hora = 7'h37; //El segundo digito sera 7
			else if (seg_t==4'h8||seg_t==8'h18||seg_t==8'h28||seg_t==8'h38||seg_t==8'h48||seg_t==8'h58)
				char_addr_numerico_hora = 7'h38; //El segundo digito sera 8
			else if (seg_t==4'h9||seg_t==8'h19||seg_t==8'h29||seg_t==8'h39||seg_t==8'h49||seg_t==8'h59)
				char_addr_numerico_hora = 7'h39; //El segundo digito sera 9		
			else char_addr_numerico_hora = 7'h30; //El segundo digito sera 0, cuando es 00, 10, 20, 30, 40 o 50
		end
		else char_addr_numerico_hora = 7'h00;
		
		
	//******************* Para el cronometro
	assign cronometro = (24<=pixel_x[9:4] && 37>=pixel_x[9:4] && pixel_y[9:5]==5);
   assign row_addr_cronometro = pixel_y[4:1];
   assign bit_addr_cronometro = pixel_x[3:1];
	
		always @*
			case (pixel_x[9:4])
			6'h1a: char_addr_cronometro = 7'h43; // C
			6'h1b: char_addr_cronometro = 7'h72; // r
			6'h1c: char_addr_cronometro = 7'h6f; // o
			6'h1d: char_addr_cronometro = 7'h6e; // n
			6'h1e: char_addr_cronometro = 7'h6f; // o
			6'h1f: char_addr_cronometro = 7'h6d; // m
			6'h20: char_addr_cronometro = 7'h65; // e
			6'h21: char_addr_cronometro = 7'h74; // t
			6'h22: char_addr_cronometro = 7'h72; // r
			6'h23: char_addr_cronometro = 7'h6f; // o
			6'h24: char_addr_cronometro = 7'h00; //
			default:
				char_addr_cronometro = 7'h00;
		endcase

	//Cambio en sus parametros
	assign cronometro_cambio = (24<=pixel_x[9:4] && 37>=pixel_x[9:4] && pixel_y[9:5]==6);
   assign row_addr_cronometro_cambio = pixel_y[4:1];
   assign bit_addr_cronometro_cambio = pixel_x[3:1];
	
always@* begin		
		if (pixel_x[9:4]==5'h1c||pixel_x[9:4]==6'h21) //Donde se imprimen dos puntos
			char_addr_cronometro_cambio = 7'h3a;
		else if(pixel_x[9:4]==5'h19) begin //Digitos
			if(hora_c>=4'h0&&hora_c<=4'h9) begin
				char_addr_cronometro_cambio = 7'h30;
			end
			else if(hora_c>=8'h10&&hora_c<=8'h19) begin
				char_addr_cronometro_cambio = 7'h31; //1
			end
			else 
				char_addr_cronometro_cambio = 7'h32; //Si la hora es de 20 a 23
		end
		else if(pixel_x[9:4]==5'h1a) begin
		// son 8 casos y un else, uno para cada digito
		//segundo digito de la hora
			if(hora_c==4'h1||hora_c==8'h11||hora_c==8'h21)
				char_addr_cronometro_cambio = 7'h31; //1
			else if(hora_c==4'h2||hora_c==8'h12||hora_c==8'h22)
				char_addr_cronometro_cambio = 7'h32; //2
			else if(hora_c==4'h3||hora_c==8'h13||hora_c==8'h23)
				char_addr_cronometro_cambio = 7'h33; //3
			else if(hora_c==4'h4||hora_c==8'h14)
				char_addr_cronometro_cambio = 7'h34; //4
			else if(hora_c==4'h5||hora_c==8'h15)
				char_addr_cronometro_cambio = 7'h35; //5
			else if(hora_c==4'h6||hora_c==8'h16)
				char_addr_cronometro_cambio = 7'h36; //6
			else if(hora_c==4'h7||hora_c==8'h17)
				char_addr_cronometro_cambio = 7'h37; //7
			else if(hora_c==4'h8||hora_c==8'h18)
				char_addr_cronometro_cambio = 7'h38; //8
			else if(hora_c==8'h10||hora_c==8'h20)
				char_addr_cronometro_cambio = 7'h30; //8
			else 
				char_addr_cronometro_cambio = 7'h39; //9
		end
		else if(pixel_x[9:4]==5'h1e) begin			
			if (min_c>=4'h0&&min_c<=4'h9)
				char_addr_cronometro_cambio = 7'h30; //0
			else if (min_c>=8'h10&&min_c<=8'h19)
				char_addr_cronometro_cambio = 7'h31; //1
			else if (min_c>=8'h20&&min_c<=8'h29)
				char_addr_cronometro_cambio = 7'h32; //2
			else if (min_c>=8'h30&&min_c<=8'h39)
				char_addr_cronometro_cambio = 7'h33; //3
			else if (min_c>=8'h40&&min_c<=8'h49)
				char_addr_cronometro_cambio = 7'h34; //4
			else char_addr_cronometro_cambio = 7'h35; //5
		end
		else if(pixel_x[9:4]==5'h1f) begin
			if (min_c==4'h1||min_c==8'h11||min_c==8'h21||min_c==8'h31||min_c==8'h41||min_c==8'h51)
				char_addr_cronometro_cambio = 7'h31; //El segundo digito sera 1
			else if (min_c==4'h2||min_c==8'h12||min_c==8'h22||min_c==8'h32||min_c==8'h42||min_c==8'h52)
				char_addr_cronometro_cambio = 7'h32; //El segundo digito sera 2
			else if (min_c==4'h3||min_c==8'h13||min_c==8'h23||min_c==8'h33||min_c==8'h43||min_c==8'h53)
				char_addr_cronometro_cambio = 7'h33; //El segundo digito sera 3
			else if (min_c==4'h4||min_c==8'h14||min_c==8'h24||min_c==8'h34||min_c==8'h44||min_c==8'h54)
				char_addr_cronometro_cambio = 7'h34; //El segundo digito sera 4
			else if (min_c==4'h5||min_c==8'h15||min_c==8'h25||min_c==8'h35||min_c==8'h45||min_c==8'h55)
				char_addr_cronometro_cambio = 7'h35; //El segundo digito sera 5
			else if (min_c==4'h6||min_c==8'h16||min_c==8'h26||min_c==8'h36||min_c==8'h46||min_c==8'h56)
				char_addr_cronometro_cambio = 7'h36; //El segundo digito sera 6
			else if (min_c==4'h7||min_c==8'h17||min_c==8'h27||min_c==8'h37||min_c==8'h47||min_c==8'h57)
				char_addr_cronometro_cambio = 7'h37; //El segundo digito sera 7
			else if (min_c==4'h8||min_c==8'h18||min_c==8'h28||min_c==8'h38||min_c==8'h48||min_c==8'h58)
				char_addr_cronometro_cambio = 7'h38; //El segundo digito sera 8
			else if (min_c==4'h9||min_c==8'h19||min_c==8'h29||min_c==8'h39||min_c==8'h49||min_c==8'h59)
				char_addr_cronometro_cambio = 7'h39; //El segundo digito sera 9		
			else 
				char_addr_cronometro_cambio = 7'h30; //El segundo digito sera 0, cuando es 00, 10, 20, 30, 40 o 50
		end
		else if(pixel_x[9:4]==6'h23) begin
			if (seg_c>=4'h0&&seg_c<=4'h9)
				char_addr_cronometro_cambio = 7'h30; //0
			else if (seg_c>=8'h10&&seg_c<=8'h19)
				char_addr_cronometro_cambio = 7'h31; //1
			else if (seg_c>=8'h20&&seg_c<=8'h29)
				char_addr_cronometro_cambio = 7'h32; //2
			else if (seg_c>=8'h30&&seg_c<=8'h39)
				char_addr_cronometro_cambio = 7'h33; //3
			else if (seg_c>=8'h40&&seg_c<=8'h49)
				char_addr_cronometro_cambio = 7'h34; //4
			else char_addr_cronometro_cambio = 7'h35; //5
		end
		else if(pixel_x[9:4]==6'h24) begin //segundo digito de los segundos
			if (seg_c==4'h1||seg_c==8'h11||seg_c==8'h21||seg_c==8'h31||seg_c==8'h41||seg_c==8'h51)
				char_addr_cronometro_cambio = 7'h31; //El segundo digito sera 1
			else if (seg_c==4'h2||seg_c==8'h12||seg_c==8'h22||seg_c==8'h32||seg_c==8'h42||seg_c==8'h52)
				char_addr_cronometro_cambio = 7'h32; //El segundo digito sera 2
			else if (seg_c==4'h3||seg_c==8'h13||seg_c==8'h23||seg_c==8'h33||seg_c==8'h43||seg_c==8'h53)
				char_addr_cronometro_cambio = 7'h33; //El segundo digito sera 3
			else if (seg_c==4'h4||seg_c==8'h14||seg_c==8'h24||seg_c==8'h34||seg_c==8'h44||seg_c==8'h54)
				char_addr_cronometro_cambio = 7'h34; //El segundo digito sera 4
			else if (seg_c==4'h5||seg_c==8'h15||seg_c==8'h25||seg_c==8'h35||seg_c==8'h45||seg_c==8'h55)
				char_addr_cronometro_cambio = 7'h35; //El segundo digito sera 5
			else if (seg_c==4'h6||seg_c==8'h16||seg_c==8'h26||seg_c==8'h36||seg_c==8'h46||seg_c==8'h56)
				char_addr_cronometro_cambio = 7'h36; //El segundo digito sera 6
			else if (seg_c==4'h7||seg_c==8'h17||seg_c==8'h27||seg_c==8'h37||seg_c==8'h47||seg_c==8'h57)
				char_addr_cronometro_cambio = 7'h37; //El segundo digito sera 7
			else if (seg_c==4'h8||seg_c==8'h18||seg_c==8'h28||seg_c==8'h38||seg_c==8'h48||seg_c==8'h58)
				char_addr_cronometro_cambio = 7'h38; //El segundo digito sera 8
			else if (seg_c==4'h9||seg_c==8'h19||seg_c==8'h29||seg_c==8'h39||seg_c==8'h49||seg_c==8'h59)
				char_addr_cronometro_cambio = 7'h39; //El segundo digito sera 9		
			else 
				char_addr_cronometro_cambio = 7'h30; //El segundo digito sera 0, cuando es 00, 10, 20, 30, 40 o 50
		end
		else
			char_addr_cronometro_cambio = 7'h00;
	end
	
	//*********************Alarma y bola para la alarma
	
	assign alarma = (27<=pixel_x[9:4] && 34>=pixel_x[9:4] && pixel_y[9:5]==10);
   assign row_addr_alarma = pixel_y[4:1];
   assign bit_addr_alarma = pixel_x[3:1];
	
		always @*
			case (pixel_x[9:4])
			6'h1d: char_addr_alarma = 7'h52; // R
			6'h1e: char_addr_alarma = 7'h49; // I
			6'h1f: char_addr_alarma = 7'h4e; // N
			6'h20: char_addr_alarma = 7'h47; // G
			default:
				char_addr_alarma = 7'h00;
		endcase
		
		//-------Bola
		//La bola tendrá un tamaño mayor. 32x64
		//En x caben 20 tiles y en Y 7
	assign bola = (pixel_x[9:5]>=14 && pixel_x[9:5]<=16 && pixel_y[9:6]==4);
   assign row_addr_bola = pixel_y[5:2];
   assign bit_addr_bola = pixel_x[4:2];
	
		always @*
			case (pixel_x[9:5])
			6'hf: char_addr_bola = 7'h02; // bola
			default:
				char_addr_bola = 7'h00;
		endcase
	
	//Decoracion
	
	assign heart = (0<=pixel_x[9:4] && (pixel_y[9:4]==29||pixel_y[9:4]==0));
   assign row_addr_heart = pixel_y[3:0];
   assign bit_addr_heart = pixel_x[2:0];
	
	always @*
		case (pixel_x[9:3])
			4'h0: char_addr_heart = 7'h03;
			4'h1: char_addr_heart = 7'h03;
			4'h2: char_addr_heart = 7'h03;
			4'h3: char_addr_heart = 7'h03;
			4'h4: char_addr_heart = 7'h03;
			4'h5: char_addr_heart = 7'h03;
			4'h6: char_addr_heart = 7'h03;
			4'h7: char_addr_heart = 7'h03;
			4'h8: char_addr_heart = 7'h03;
			4'h9: char_addr_heart = 7'h03;
			4'ha: char_addr_heart = 7'h03;
			4'hb: char_addr_heart = 7'h03;
			4'hc: char_addr_heart = 7'h03;
			4'hd: char_addr_heart = 7'h03;
			4'he: char_addr_heart = 7'h03;
			4'hf: char_addr_heart = 7'h03;
			5'h10: char_addr_heart = 7'h03;
			5'h11: char_addr_heart = 7'h03;
			5'h12: char_addr_heart = 7'h03;
			5'h13: char_addr_heart = 7'h03;
			5'h14: char_addr_heart = 7'h03;
			5'h15: char_addr_heart = 7'h03;
			5'h16: char_addr_heart = 7'h03;
			5'h17: char_addr_heart = 7'h03;
			5'h18: char_addr_heart = 7'h03;
			5'h19: char_addr_heart = 7'h03;
			5'h1a: char_addr_heart = 7'h03;
			5'h1b: char_addr_heart = 7'h03;
			5'h1c: char_addr_heart = 7'h03;
			5'h1d: char_addr_heart = 7'h03;
			5'h1e: char_addr_heart = 7'h03;
			5'h1f: char_addr_heart = 7'h03;
			6'h20: char_addr_heart = 7'h03;
			6'h21: char_addr_heart = 7'h03;
			6'h22: char_addr_heart = 7'h03;
			6'h23: char_addr_heart = 7'h03;
			6'h24: char_addr_heart = 7'h03;
			6'h25: char_addr_heart = 7'h03;
			6'h26: char_addr_heart = 7'h03;
			6'h27: char_addr_heart = 7'h03;
			6'h28: char_addr_heart = 7'h03;
			6'h29: char_addr_heart = 7'h03;
			6'h2a: char_addr_heart = 7'h03;
			6'h2b: char_addr_heart = 7'h03;
			6'h2c: char_addr_heart = 7'h03;
			6'h2d: char_addr_heart = 7'h03;
			6'h2e: char_addr_heart = 7'h03;
			6'h2f: char_addr_heart = 7'h03;
			6'h30: char_addr_heart = 7'h03;
			6'h31: char_addr_heart = 7'h03;
			6'h32: char_addr_heart = 7'h03;
			default:
				char_addr_heart = 7'h03;
		endcase

	// ---------------- Pintar en la VGA	
	always @*   begin
      red_text = 3'b000;
		green_text = 3'b00;
		blue_text = 2'b00;
		char_addr= 7'b0000000;
		row_addr= 4'b0000;
		bit_addr=3'b000;
      if (fecha_encabezado)
         begin
            char_addr = char_addr_fecha_encabezado;
            row_addr = row_addr_fecha_encabezado;
            bit_addr = bit_addr_fecha_encabezado;
            if (font_bit)
               begin
					red_text = 3'b111;
					green_text = 3'b011;
					blue_text = 2'b11;
					end
				else
				begin
				end
         end
		else if(dia) begin
            char_addr = char_addr_dia;
            row_addr = row_addr_dia;
            bit_addr = bit_addr_dia;
            if (font_bit)
               begin
					red_text = 3'b111;
					green_text = 3'b011;
					blue_text = 2'b01;
					end
				else
				begin
				end
		end
		else if(instrucciones) begin
            char_addr = char_addr_instruc;
            row_addr = row_addr_instruc;
            bit_addr = bit_addr_instruc;
            if (font_bit)
               begin
					red_text = 3'b111;
					green_text = 3'b011;
					blue_text = 2'b01;
					end
				else
				begin
				end
		end
		else if(mes) begin	
            char_addr = char_addr_mes;
            row_addr = row_addr_mes;
            bit_addr = bit_addr_mes;
            if (font_bit)
               begin
					red_text = 3'b111;
					green_text = 3'b011;
					blue_text = 2'b01;
					end
				else
				begin
				end
		end		
		else if(year) begin	
            char_addr = char_addr_year;
            row_addr = row_addr_year;
            bit_addr = bit_addr_year;
            if (font_bit)
               begin
					red_text = 3'b111;
					green_text = 3'b011;
					blue_text = 2'b01;
					end
				else
				begin
				end
		end	
		else if(instruc_row1) begin
            char_addr = char_addr_instruc_row1;
            row_addr = row_addr_instruc_row1;
            bit_addr = bit_addr_instruc_row1;
            if (font_bit)
               begin
					red_text = 3'b111;
					green_text = 3'b011;
					blue_text = 2'b01;
					end
				else
				begin
				end
		end
		else if(instruc_row2) begin
            char_addr = char_addr_instruc_row2;
            row_addr = row_addr_instruc_row2;
            bit_addr = bit_addr_instruc_row2;
            if (font_bit)
               begin
					red_text = 3'b111;
					green_text = 3'b011;
					blue_text = 2'b01;
					end
				else
				begin
				end
		end	
		else if(instruc_row3) begin
            char_addr = char_addr_instruc_row3;
            row_addr = row_addr_instruc_row3;
            bit_addr = bit_addr_instruc_row3;
            if (font_bit)
               begin
					red_text = 3'b111;
					green_text = 3'b011;
					blue_text = 2'b01;
					end
				else
				begin
				end
		end		
		else if(hora_encabezado) begin
            char_addr = char_addr_hora_encabezado;
            row_addr = row_addr_hora_encabezado;
            bit_addr = bit_addr_hora_encabezado;
            if (font_bit)
               begin
					red_text = 3'b111;
					green_text = 3'b011;
					blue_text = 2'b11;
					end
				else
				begin
				end
		end	
		else if(cronometro) begin
            char_addr = char_addr_cronometro;
            row_addr = row_addr_cronometro;
            bit_addr = bit_addr_cronometro;
            if (font_bit)
               begin
					red_text = 3'b111;
					green_text = 3'b011;
					blue_text = 2'b11;
					end
				else
				begin
				end
		end	
		else if(numerico_hora) begin
            char_addr = char_addr_numerico_hora;
            row_addr = row_addr_numerico_hora;
            bit_addr = bit_addr_numerico_hora;
            if (font_bit)
               begin
					red_text = 3'b111;
					green_text = 3'b011;
					blue_text = 2'b01;
					end
				else
				begin
				end
		end
		else if(cronometro_cambio) begin //Esto debe parpadear cuando vaya retrocediendo y llegue a 0
		//Se utilizara un nuevo reloj con una frecuencia de 4 Hz
            char_addr = char_addr_cronometro_cambio;
            row_addr = row_addr_cronometro_cambio;
            bit_addr = bit_addr_cronometro_cambio;
				if (alarma_signal)
					if (parpadeo) begin
						if (font_bit)
							begin
							red_text = 3'b111;
							green_text = 3'b011;
							blue_text = 2'b01;
							end
						else
						begin
						end
					end
					else begin
						if (font_bit)
							begin
							red_text = 3'b100;
							green_text = 3'b000;
							blue_text = 2'b00;
							end
						else
						begin
						end
					end
				else begin
					if (font_bit)
					begin
						red_text = 3'b111;
						green_text = 3'b011;
						blue_text = 2'b01;
					end
					else
					begin
					end
				end
		end
		else if(alarma) begin
            char_addr = char_addr_alarma;
            row_addr = row_addr_alarma;
            bit_addr = bit_addr_alarma;
            if (font_bit)
               begin
					red_text = 3'b111;
					green_text = 3'b011;
					blue_text = 2'b11;
					end
				else
				begin
				end
		end
		else if(heart) begin
            char_addr = char_addr_heart;
            row_addr = row_addr_heart;
            bit_addr = bit_addr_heart;
            if (font_bit)
               begin
					red_text = 3'b111;
					green_text = 3'b001;
					blue_text = 2'b11;
					end
				else
				begin
				end
		end
				else if(bola) begin
            char_addr = char_addr_bola;
            row_addr = row_addr_bola;
            bit_addr = bit_addr_bola;
            if (font_bit) begin
					if (alarma_signal) begin
						red_text = 3'b111;
						green_text = 3'b000;
						blue_text = 2'b00;
					end
					else begin
						red_text = 3'b001;
						green_text = 3'b101;
						blue_text = 2'b01;		
					end					
				end
				else
				begin
				end
		end	
      else
         begin
         end
   end

	assign rom_addr = {char_addr, row_addr};
   assign font_bit = font_word[~bit_addr];
	assign text_on = fecha_encabezado || dia || instrucciones || instruc_row1 || instruc_row2 || instruc_row3 || mes || year || hora_encabezado || cronometro || numerico_hora || cronometro_cambio || alarma || bola || heart;

endmodule 