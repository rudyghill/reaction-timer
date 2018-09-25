//Rudy Hill, Eric Dahl
//ECEN 2350
//Spring 2018
//
module Clock_divider(IN,OUT);
	input IN;
	output reg OUT;
	integer count;
	parameter A = 50000;
	
	initial
		OUT <= 0;
	
	always @(posedge IN)
	begin
		count <= count + 1;
		if (count == A)
		begin
			OUT <= 1;
			count <= 0;
		end
		else
			OUT <= 0;
	end
endmodule
