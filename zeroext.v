module zeroext(input   [15:0] a,output [31:0] y);
reg c=1'b0;
 assign y = {{16{c}}, a};
endmodule