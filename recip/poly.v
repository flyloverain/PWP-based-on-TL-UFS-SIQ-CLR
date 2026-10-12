`timescale 1ns / 1ps


module poly (
    input  [16:0] xc,
    input  [11:0] a,
    input  [15:0] b,
    input  [29:0] c,
    output [22:0] y
);

    wire [16:0] x_in;
    assign x_in = xc[16:0];

    wire [28:0] ax;
    assign ax = a * x_in;

    wire [34:0] y1;
    assign y1 = {b,19'b0} - ax;

    wire [26:0] y1_t;
    assign y1_t = y1[34:8];

    wire [43:0] y2;
    assign y2 = y1_t * x_in;

    wire [49:0] y3;
    assign y3 = {c,20'b0} - y2;

    assign y = y3[49:27] + y3[26];

endmodule