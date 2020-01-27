module xor1(out,a,b);
input a,b;
output out;
wire abar,bbar,t1,t2;
not inA(abar,a);
not inB(bbar,b);
and and1(t1,a,bbar);
and and2(t2,b,abar);
or or1(out,t1,t2);
endmodule