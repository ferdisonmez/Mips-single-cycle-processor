`define DELAY 20
module extend24_testbench();
reg [7:0] c0;
wire [31:0] result;

extend24 muxtb(c0,result);

initial begin
c0 = 8'b11111111;
#`DELAY;
c0 = 8'b11100011;
#`DELAY;
end
 
initial begin
$monitor("time = %2d, c0 =%8b, result=%32b", $time, c0,result);
end
 
endmodule