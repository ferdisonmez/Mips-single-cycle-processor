`define DELAY 20
module program_counter_testbench();
wire [31:0]  next_address;
reg [31:0] address;
reg clock, reset;

program_counter muxtb(next_address,address,clock,reset);

initial begin
address=32'b00000000000000010010100000000000;clock=1;reset=0;
#`DELAY;
address=32'b00000000000000010010100000000000;clock=1;reset=0;
#`DELAY;
address=32'b00000000000000010010100000000000;clock=0;reset=1;
#`DELAY;
end
 
initial begin
$monitor("time = %2d, next_address =%32b, address=%32b ,clock=%1b,reset=%1b", $time, next_address,address,clock,reset);
end
 
endmodule