module MSBALU(input ai,input bi,input ci,input Aluop0,input Aluop1,input Aluop2,input lessi,output ri,output set,output cci,output V);

	wire xor1_wire,xor2_wire,xor3_wire;
	wire or1_wire,or2_wire;
	wire and1_wire,and2_wire,and3_wire,and4_wire;
	wire not1_wire,not2_wire;

	xor1 bxor1(xor1_wire,bi,Aluop2);
	or or1(or1_wire,ai,xor1_wire);
	and and1(and1_wire,ai,xor1_wire);
	not not1(not1_wire,and1_wire);
	and and2(and2_wire,not1_wire,or1_wire);
	and and3(and3_wire,and2_wire,ci);
	or or2(or2_wire,ci,and2_wire);
	or or3(cci,and3_wire,and1_wire);
	not not2(not2_wire,and3_wire);
	and and4(and4_wire,not2_wire,or2_wire);
	xor1 bxor2(V,ci,cci);
	not bxot3(set,cci);
	mux_4x1 msbmux(ri,and1_wire,or1_wire,and4_wire,lessi,Aluop1,Aluop0);

endmodule