module poly (
    input  [16:0] xc,
    input  [11:0] a,
    input  [17:0] b,
    input  [26:0] c,
    output [23:0] y
);

    wire [16:0] x_in;
    assign x_in = xc[16:0];

    wire [28:0] ax;
    assign ax = a * x_in;

    wire [35:0] y1;
    assign y1 = {b,18'b0} - ax;

    wire [24:0] y1_t;
    assign y1_t = y1[35:11];

    wire [41:0] y2;
    assign y2 = y1_t * x_in;

    wire [46:0] y3;
    assign y3 = {c,20'b0} + y2;

    assign y = y3[46:24] + y3[23];

endmodule
