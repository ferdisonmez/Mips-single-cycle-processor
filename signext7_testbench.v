`define DELAY 20
module signext7_testbench();
reg [4:0] c0;
wire [7:0] result;

signext7 muxtb(c0,result);

initial begin
c0 = 5'b11111;
#`DELAY;
c0 = 5'b00011;
#`DELAY;
end
 
initial begin
$monitor("time = %2d, c0 =%5b, result=%8b", $time, c0,result);
end
 
endmodule