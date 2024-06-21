module check101(
	input clk,clr,x,
	output reg y
	);
	reg[1:0] state;
	parameter s0=2'b00,s1=2'b01,s2=2'b11,s3=2'b10;
	
	always@(posedge clk ,posedge clr)begin
		if(clr)
			state<=s0;
		else 
			case(state)
			s0:begin
				if(x)begin
					state<=s1;
					y=1'b0;
				end	
				else begin
					state<=s0;
					y=1'b0;
				end
			end
			s1:begin
				if(x)begin
					state<=s1;
					y=1'b0;
				end	
				else begin
					state<=s2;
					y=1'b0;
				end
			end
			s2:begin
				if(x)begin
					state<=s3;
					y=1'b0;
				end	
				else begin
					state<=s0;
					y=1'b0;
				end
			end
			s3:begin
				if(x)begin
					state<=s1;
					y=1'b1;
				end	
				else begin
					state<=s2;
					y=1'b1;
				end
			end
			default:begin
				state<=s0;
				y=1'b0;
			end
			endcase
	
	
	end
	
	
	
	
endmodule