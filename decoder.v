// Decoder circuit
`define AND and #50
`define NOT not #50

module behavioralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Uses concatenation and shift operators
    assign {out3,out2,out1,out0}=enable<<{address1,address0};
endmodule


module structuralDecoder
(
    output out0, out1, out2, out3,
    output naddress0, naddress1,
    input address0, address1,
    input enable
);
    // Your decoder code here
    `NOT inv(naddress0, address0);
    `NOT inv(naddress1, address1);
    `AND andgate(out0, naddress0, naddress1, enable);
    `AND andgate(out1, address0, naddress1, enable);
    `AND andgate(out2, naddress0, address1, enable);
    `AND andgate(out3, address0, address1, enable);
endmodule

