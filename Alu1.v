module Alu1(input ai,input bi,input ci,input Aluop2,input lessi,input Aluop0,input Aluop1,output cci,output ri);
	wire xor_wire,and1_wire,or1_wire;
	wire not1_wire,not2_wire;
	wire and2_wire,and3_wire;
	xor1 ilk(xor_wire,bi,Aluop2);
	and and1(and1_wire,xor_wire,ai);
	or or1(or1_wire,ai,xor_wire);
	not not1(not1_wire,and1_wire);
	and and2(and2_wire,not1_wire,or1_wire);
	and and3(and3_wire,ci,and2_wire);
	or or2(cci,and1_wire,and3_wire);
	not not2(not2_wire,and3_wire);
	or or3(or3_wire,and2_wire,ci);
	and and4(and4_wire,or3_wire,not2_wire);
	mux_4x1 mux1(ri,and1_wire,or1_wire,and4_wire,lessi,Aluop1,Aluop0);

endmodule