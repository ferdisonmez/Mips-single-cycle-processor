`define DELAY 20
module instruction_memory_testbench();
wire [31:0]  instruction;
reg [31:0] address;

instruction_memory muxtb(instruction,address);

initial begin
address<=32'b00000000000001001010000000000000;
#`DELAY;
address<=32'b00010000111001001111111111111100;
#`DELAY;
address<=32'b00000000101001000011100000001010;
#`DELAY;
end
 
initial begin
$monitor("time = %2d, instruction =%32b, address=%32b", $time, instruction,address);
end
 
endmodule