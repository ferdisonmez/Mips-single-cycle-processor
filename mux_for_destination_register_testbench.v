`define DELAY 20
module mux_for_destination_register_testbench();

reg[4:0] in1;
reg[4:0] in2;
reg select;
wire [4:0] out;


mux_for_destination_register test(out,in1,in2,select);


initial begin
in1 = 5'b01010; 
in2 = 5'b11111;
select = 1'b0;
#`DELAY;
in1 = 5'b01010; 
in2 = 5'b11111;
select = 1'b1;

end

initial begin
$monitor("out=%5b in1=%5b in2=%5b select=%1b", out,in1,in2,select);
end


endmodule