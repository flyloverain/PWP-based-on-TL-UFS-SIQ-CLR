module poly (
    input  [17:0] xc,
    input  [10:0] a,
    input  [16:0] b,
    input  [26:0] c,
    output [23:0] y
);

    wire [17:0] x_in;
    assign x_in = xc[17:0];

    wire [28:0] ax;
    assign ax = a * x_in;

    wire [36:0] y1;
    assign y1 = {b,20'b0} - ax;

    wire [23:0] y1_t;
    assign y1_t = y1[36:13];

    wire [41:0] y2;
    assign y2 = y1_t * x_in;

    wire [47:0] y3;
    assign y3 = {c,21'b0} + y2;

    assign y = y3[47:24] + y3[23];

endmodule