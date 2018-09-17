// Adder circuit
`define AND and #50
`define OR or #50
`define XOR xor #50

module behavioralFullAdder
(
    output sum,
    output carryout,
    input a,
    input b,
    input carryin
);
    // Uses concatenation operator and built-in '+'
    assign {carryout, sum}=a+b+carryin;
endmodule

module structuralFullAdder
(
    output sum,
    output carryout,
    output axorb, ab, caxorb,
    input a,
    input b,
    input carryin
);
    // Your adder code here
    `XOR xorgate(axorb, a, b);
    `AND andgate(ab, a, b);
    `XOR xorgate(sum, carryin, axorb);
    `AND andgate(caxorb, carryin, axorb);
    `OR  orgate(carryout, caxorb, ab);
endmodule
