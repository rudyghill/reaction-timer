//Rudy Hill
//ECEN 2350
//Spring 2018
//
module LFSR(CLK,Q);
	input CLK;
	output [10:0] Q;
	reg [14:0] P;
	
	initial
		P = 15'b111011001001011;
	
	always @(posedge CLK)
		P = {P[13:0], P[14] ^ P[13]};
		
	assign Q = P[14:4];
endmodule
