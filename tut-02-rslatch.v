module bench;
  reg r,s;
  wire out,out_n;

  nor x1(out,out_n,r);
  nor x2(out_n,out,s);

  initial begin
    $dumpvars(0,bench);
    #5;
    r=0;
    s=0;
    #5;
    r=1;
    #5;
    r=0;
    #5;
    s=1;
    #5;
    s=0;
    #5;
    $finish;
  end
endmodule
