module signext_26_to_32(input  [25:0] a,output [31:0] y);
 assign y = {{26{a[25]}}, a};
endmodule