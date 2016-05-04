module text_top
   (
    input wire clk, reset,
	 input wire [7:0] cambio_dia, cambio_mes, cambio_year, hora_t, hora_c, min_t, min_c, seg_t, seg_c,
	 input wire alarma_signal, parpadeo, 
    output wire hsync, vsync,
	 output wire [9:0] pixel_x, pixel_y,
    output reg [2:0] red,
	 output reg [2:0] green,
	 output reg [1:0] blue,
	 output wire pixel_tick
   );

   // signal declaration
//   wire [9:0] pixel_x, pixel_y;
	wire [2:0] red_text, red_graph;
	wire [2:0] green_text, green_graph;
	wire [1:0] blue_text, blue_graph;

	//wire text_on;

   // body
   // instantiate vga sync circuit
   vga_sync vga_sync
      (.clk(clk), .reset(reset), .hsync(hsync), .vsync(vsync), .p_tick(pixel_tick),
       .pixel_x(pixel_x), .pixel_y(pixel_y));
   // font generation circuit
	texto texto (
    .clk(clk), 
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y), 
	 .alarma_signal(alarma_signal),
	 .text_on(text_on),
	 .parpadeo(parpadeo),
	 .cambio_dia(cambio_dia), 
	 .cambio_mes(cambio_mes), 
	 .cambio_year(cambio_year),
	 .hora_t(hora_t), 
	 .hora_c(hora_c), 
	 .min_t(min_t), 
	 .min_c(min_c), 
	 .seg_t(seg_t), 
	 .seg_c(seg_c), 
	 .red_text(red_text), 
	 .green_text(green_text), 
	 .blue_text(blue_text)
    );
	 
	 Fondo Fondo (
    //.clk(clk), 
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
  //  .reset(reset), 
    .red_graph(red_graph), 
    .green_graph(green_graph), 
    .blue_graph(blue_graph)
    );

	always @ *//(posedge clk)
		if (text_on) begin //rgb = rgb_text;
			red = red_text;
			green = green_text;
			blue = blue_text;
			end
		else begin
			red = red_graph; //rgb = rgb_graph;
			green = green_graph;
			blue = blue_graph;
		end

		
endmodule

