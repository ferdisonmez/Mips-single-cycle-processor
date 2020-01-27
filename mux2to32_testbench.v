`define DELAY 20
module mux2to32_testbench();

reg[31:0] in1;
reg[31:0] in2;
reg select;
wire [31:0] out;


mux2to32 test(out,in1,in2,select);


initial begin
in1 = 32'b11110000111100001111000011110000; 
in2 = 32'b11111111111111111111111111111111;
select = 1'b0;
#`DELAY;
in1 = 32'b11110000000000000000000000001111; 
in2 = 32'b111111111111111100000000000000000;
select = 1'b1;

end

initial begin
$monitor("out=%32b in1=%32b in2=%32b select=%1b", out,in1,in2,select);
end


endmodule