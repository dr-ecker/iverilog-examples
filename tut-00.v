module bench;
  reg in;
  wire out;

  assign out=~in;

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
