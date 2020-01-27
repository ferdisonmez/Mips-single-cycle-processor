`define DELAY 20
module signext_26_to_32_testbench();
reg [25:0] c0;
wire [31:0] result;

signext_26_to_32 muxtb(c0,result);

initial begin
c0 = 26'b00111100001111000011110000;
#`DELAY;
c0 = 26'b10111100001111000011110011;
#`DELAY;
end
 
initial begin
$monitor("time = %2d, c0 =%26b, result=%32b", $time, c0,result);
end
 
endmodule