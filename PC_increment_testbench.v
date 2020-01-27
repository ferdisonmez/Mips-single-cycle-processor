`define DELAY 20
module PC_increment_testbench();
reg [31:0] c0;
wire [31:0] result;

PC_increment muxtb(result,c0);

initial begin
c0 = 32'b11111111000000001111000011110000;
#`DELAY;
c0 = 32'b11111111000000001111000011111111;
#`DELAY;
end
 
initial begin
$monitor("time = %2d, c0 =%32b, result=%32b", $time, c0,result);
end
 
endmodule