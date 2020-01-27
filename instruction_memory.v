module instruction_memory(instruction, program_counter);
input [31:0] program_counter;
output [31:0] instruction;

reg [31:0] instr_mem [255:0];

initial begin
	$readmemb(".\\instruction_memory.mem", instr_mem);
end

assign instruction = instr_mem[program_counter];

endmodule