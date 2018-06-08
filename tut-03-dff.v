//Structural Verilog DFF
module dlatch(output o, input d, input en);
  wire d_n, s,r,o_n;
  and x1(s,d,en);
  and x2(r,d_n,en);
  not x3(d_n,d);
  nor x4(o_n,s,o);
  nor x5(o,r,o_n);
endmodule

module dff1(output q, input d, input clk);
  wire clk_n;
  not x1(clk_n,clk);
  dlatch x2(q_m,d,clk_n);
  dlatch x3(q,d,clk);
endmodule

//Behavioral Verilog DFF
module dff2(output q, input d, input clk);
  reg q_reg;
  assign q = q_reg;
  always@(posedge clk)
  begin
    q_reg=d;
  end
endmodule

module bench;
  reg D,clk;
  wire out1,out2;

  dff1 x1(out1,D,clk);
  dff2 x2(out2,D,clk);

  initial begin
    $dumpvars(0,bench);
    #5;
    D=0;
    clk=0;
    #5;
    clk=1;
    #5;
    clk=0;
    #5;
    D=1;
    #5;
    clk=1;
    #5;
    $finish;
  end
endmodule
