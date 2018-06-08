module bench;
 reg [3:0]A,B,C,D;
 wire [3:0]X;
 wire [7:0]Y;
 
 assign X=A+B;
 assign Y=C*D;
 
 initial begin
  $dumpvars(0,bench);
  #1;
  A=2;
  B=-1;
  C=2;
  D=3;
  #4;
  A=11;
  B=6;
  C=5;
  D=5;
  #4;
  $finish;
 end
endmodule
 