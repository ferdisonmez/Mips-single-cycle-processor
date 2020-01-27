module zeroext7(input   [4:0] a,output [7:0] y);
reg c=1'b0;
 assign y = {{5{c}}, a};
endmodule