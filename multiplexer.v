// Multiplexer circuit
`define AND and #50
`define OR or #50
`define NOT not #50

module behavioralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Join single-bit inputs into a bus, use address as index
    wire[3:0] inputs = {in3, in2, in1, in0};
    wire[1:0] address = {address1, address0};
    assign out = inputs[address];
endmodule


module structuralMultiplexer
(
    output out,
    output naddress0, naddress1,
    output out0, out1, out2, out3,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Your multiplexer code here
    `NOT inv(naddress0, address0);
    `NOT inv(naddress1, address1);
    `AND andgate(out0, naddress0, naddress1, in0);
    `AND andgate(out1, address0, naddress1, in1);
    `AND andgate(out2, naddress0, address1, in2);
    `AND andgate(out3, address0, address1, in3);
    `OR  orgate(out, out0, out1, out2, out3);
endmodule

