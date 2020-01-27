module signext7(input  [4:0] a,output [7:0] y);
 assign y = {{5{a[4]}}, a};
endmodule