module downstream // For Altera DE10s board
	(input	logic				clk, reset_l,
	 input	logic	done,
	 input logic [7:0] downstream_in,
    output logic [7:0] downstream_out
	 );

logic [7:0] regs ;

always_ff @(posedge clk)
	begin 

		if (!reset_l)
			begin
				downstream_out <= 8'd0;
			end
		if (!done )
			begin 
			 	regs <= downstream_in ;
				
			end 
		if(done)	
			begin
				downstream_out <= downstream_in;
				
			end
	end


endmodule
