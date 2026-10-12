module poly (
    input  [16:0] xc,
    input  [9:0] a,
    input  [15:0] b,
    input  [26:0] c,
    output [23:0] y
);

    wire [16:0] x_in;
    assign x_in = xc[16:0];

    wire [26:0] ax;
    assign ax = a * x_in;

    wire [34:0] y1;
    assign y1 = {b,19'b0} + ax;

    wire [20:0] y1_t;
    assign y1_t = y1[34:14];

    wire [37:0] y2;
    assign y2 = y1_t * x_in;

    wire [43:0] y3;
    assign y3 = {c,17'b0} + y2;

    assign y = y3[43:20] + y3[19];

endmodule



