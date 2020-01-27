module mux2_1(Data_out,Data_in_0,Data_in_1,sel);
    input Data_in_0;
    input Data_in_1;
    input sel;
    output Data_out;
    wire not_sel;
    wire temp1,temp2;
    wire Data_out_temp;
    not n1(not_sel,sel);  
    and and_1(temp1,Data_in_0,not_sel);
    and and_2(temp2,Data_in_1,sel);
    or or_1(Data_out,temp1,temp2);
    
endmodule