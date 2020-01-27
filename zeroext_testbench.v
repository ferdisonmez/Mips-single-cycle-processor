`define DELAY 20
module zeroext_testbench();
reg [15:0] c0;
wire [31:0] result;

zeroext muxtb(c0,result);

initial begin
c0 = 16'b1111111100000000;
#`DELAY;
end
 
initial begin
$monitor("time = %2d, c0 =%16b, result=%32b", $time, c0,result);
end
 
endmodule