// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
  // Your test code here
    reg addr0, addr1;
    reg in0, in1, in2, in3;
    wire out;
    wire naddr0, naddr1;
    wire out0, out1, out2, out3;

    //behavioralMultiplexer multiplexer (out,addr0,addr1,in0,in1,in2,in3);
    structuralMultiplexer multiplexer (out,naddr0,naddr1,out0,out1,out2,out3,addr0,addr1,in0,in1,in2,in3); // Swap after testing

    initial begin
        $display("A1 A0 I3 I2 I1 I0| O | Expected Output");
        addr1=0;addr0=0;in3=1;in2=1;in1=1;in0=0; #1000
        $display("%b  %b  %b  %b  %b  %b | %b | 0", addr1, addr0, in3, in2, in1, in0, out);
        addr1=0;addr0=0;in3=0;in2=0;in1=0;in0=1; #1000
        $display("%b  %b  %b  %b  %b  %b | %b | 1", addr1, addr0, in3, in2, in1, in0, out);
        addr1=0;addr0=1;in3=1;in2=1;in1=0;in0=1; #1000
        $display("%b  %b  %b  %b  %b  %b | %b | 0", addr1, addr0, in3, in2, in1, in0, out);
        addr1=0;addr0=1;in3=0;in2=0;in1=1;in0=0; #1000
        $display("%b  %b  %b  %b  %b  %b | %b | 1", addr1, addr0, in3, in2, in1, in0, out);
        addr1=1;addr0=0;in3=1;in2=0;in1=1;in0=1; #1000
        $display("%b  %b  %b  %b  %b  %b | %b | 0", addr1, addr0, in3, in2, in1, in0, out);
        addr1=1;addr0=0;in3=0;in2=1;in1=0;in0=0; #1000
        $display("%b  %b  %b  %b  %b  %b | %b | 1", addr1, addr0, in3, in2, in1, in0, out);
        addr1=1;addr0=1;in3=0;in2=1;in1=1;in0=1; #1000
        $display("%b  %b  %b  %b  %b  %b | %b | 0", addr1, addr0, in3, in2, in1, in0, out);
        addr1=1;addr0=1;in3=1;in2=0;in1=0;in0=0; #1000
        $display("%b  %b  %b  %b  %b  %b | %b | 1", addr1, addr0, in3, in2, in1, in0, out);
    end
endmodule
