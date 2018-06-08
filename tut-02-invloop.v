module bench;
  wire out,out_n;

  not x1(out,out_n);
  not x2(out_n,out);

  initial begin
    $dumpvars(0,bench);
    #5;
    $finish;
  end
endmodule
