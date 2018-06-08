module inv1(output o, input i);
  assign o=~i;
endmodule

module inv2(output o, input i);
  not x(o,i);
endmodule

module bench;
  reg in;
  wire out1,out2;

  inv1 x1(out1,in);
  inv2 x2(out2,in);

  initial begin
    $dumpvars(0,bench);
    #5;
    in=0;
    #5;
    in=1;
    #5;
    $finish;
  end
endmodule
