module PC_increment(incremented_PC_address, current_address);
output [31:0] incremented_PC_address;
input [31:0] current_address;
assign incremented_PC_address = current_address + 4; 
endmodule