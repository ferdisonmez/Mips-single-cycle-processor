`define DELAY 20
module add32_testbench();
reg [31:0] a,b;
wire [31:0] sum;

add32 add32(a,b,sum);

initial begin
a=32'b00000000000000000000000000000001;b=32'b00000000000000000000000000000011;
#`DELAY;
a=32'b00000000000000000000000000001111;b=32'b00000000000000000000000000011111;
#`DELAY;
end
 
initial begin
$monitor("time = %2d, a =%32b,b =%32b sum=%32b", $time, a,b,sum);
end
 
endmodule