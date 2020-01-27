module ALU
(
	input [31:0] data1, data2,
	input [3:0] ALUOP,
	input [4:0] shamt,
	output reg [31:0] result,
	output reg zero,
	output reg overflow
);

always @ (*) begin

		if(ALUOP==4'b0001)//ADD		
				begin
				result = $signed(data1) + $signed(data2);
				overflow = (data1[31] && data2[31] && ~result[31]) || (~data1[31] && ~data2[31] && result[31]);
				end
					
		if(ALUOP==4'b0010)//ADDU
		begin
				result = $unsigned(data1) + $unsigned(data2);
		end
		if(ALUOP==4'b0011) //AND
		begin
		result = data1 & data2;
		end
		
		if(ALUOP==4'b0101) //NOR
		begin
		result = ~(data1 | data2);
		end
		
		if(ALUOP==4'b0100) //OR
		begin
		result = data1 | data2;
		end
		
		if(ALUOP==4'b1000) //sll
		begin
		result = data2 << shamt;
		end
		
		if(ALUOP==4'b1001) //srl
		begin
		result = data2 >> shamt;
		end
		
		if(ALUOP==4'b0111) //slt
		begin
		result = (data1 < data2);
		end
		
		if(ALUOP==4'b0110) //sltu
		begin
		result = (data1 < data2);
		end
		
		if(ALUOP==4'b1010) //sub
		begin
				result = $signed(data1) - $signed(data2);
				overflow = (data1[31] && data2[31] && ~result[31]) || (~data1[31] && ~data2[31] && result[31]);
		end
		
		if(ALUOP==4'b1011) //subu
		begin
		result = $unsigned(data1) - $unsigned(data2);
		end
		
		if(ALUOP==4'b1100) //sra
		begin
		result = data2 >>> shamt;
		end
		
		if(ALUOP==4'b1101) //lui
		begin
				result[31:16] = data1[15:0];
				result[15:0] = 16'b0000000000000000;
		end
	
	zero = (result == 32'b0) && (~overflow);
end

endmodule