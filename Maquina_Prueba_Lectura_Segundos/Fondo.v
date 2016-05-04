module Fondo 
   (
   // input wire clk, reset,
	 input wire [9:0] pixel_x, pixel_y,
	 output reg [2:0] red_graph,
	 output reg [2:0] green_graph,
	 output reg [1:0] blue_graph
	
	);
	
assign cuadro = (pixel_x>=0 && pixel_x <= 640) && (pixel_y>=15 && pixel_y<=475);

always @(*)
begin
	if (pixel_y > 15 && pixel_y <475) begin
			if (cuadro) begin
				red_graph = 3'b001;
				green_graph = 3'b011;
				blue_graph = 2'b11;
				end
			else begin
				red_graph = 3'b000;
				green_graph = 3'b000;
				blue_graph = 2'b00;
			end
			end
		else begin
			red_graph = 3'b000;
			green_graph = 3'b000;
			blue_graph = 2'b00;
		end
end

endmodule 