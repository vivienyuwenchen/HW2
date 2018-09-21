// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;
    wire axorb, ab, caxorb;

    //behavioralFullAdder adder (sum, carryout, a, b, carryin);
    structuralFullAdder adder (sum, carryout, axorb, ab, caxorb, a, b, carryin);

    initial begin
        // Your test code here
        $dumpfile("adder.vcd");
        $dumpvars(0, a, b, carryin, carryout, sum);
        $display("A B Cin | Cout Sum | Expected Cout, Sum");
        a=0;b=0;carryin=0; #1000
        $display("%b %b %b   |    %b   %b |             0    0", a, b, carryin, carryout, sum);
        a=0;b=0;carryin=1; #1000
        $display("%b %b %b   |    %b   %b |             0    1", a, b, carryin, carryout, sum);
        a=0;b=1;carryin=0; #1000
        $display("%b %b %b   |    %b   %b |             0    1", a, b, carryin, carryout, sum);
        a=0;b=1;carryin=1; #1000
        $display("%b %b %b   |    %b   %b |             1    0", a, b, carryin, carryout, sum);
        a=1;b=0;carryin=0; #1000
        $display("%b %b %b   |    %b   %b |             0    1", a, b, carryin, carryout, sum);
        a=1;b=0;carryin=1; #1000
        $display("%b %b %b   |    %b   %b |             1    0", a, b, carryin, carryout, sum);
        a=1;b=1;carryin=0; #1000
        $display("%b %b %b   |    %b   %b |             1    0", a, b, carryin, carryout, sum);
        a=1;b=1;carryin=1; #1000
        $display("%b %b %b   |    %b   %b |             1    1", a, b, carryin, carryout, sum);
        $finish();
    end
endmodule
