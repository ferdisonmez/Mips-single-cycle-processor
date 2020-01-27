module extend24(input   [7:0] a,output [31:0] y);
reg c=1'b0;
 assign y = {{8{c}}, a};
endmodule