`timescale 1ns / 1ps


module poly (
    input  [17:0] xc,
    input  [11:0] a,
    input  [15:0] b,
    input  [27:0] c,
    output [23:0] y
);

    wire [17:0] x_in;
    assign x_in = xc[17:0];

    wire [29:0] ax;
    assign ax = a * x_in;

    wire [34:0] y1;
    assign y1 = {b,19'b0} - ax;

    wire [23:0] y1_t;
    assign y1_t = y1[34:11];

    wire [41:0] y2;
    assign y2 = y1_t * x_in;

    wire [48:0] y3;
    assign y3 = {c,21'b0} - y2;

    assign y = y3[48:25] + y3[24];

endmodule

