`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 

// 
// Create Date: 2026/04/15 21:08:46
// Design Name: 
// Module Name: DC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DC(
    input	[23:0]	x,
	output	[22:0]	y
    );
    wire    [11:0]  a;
    wire    [15:0]  b;
    wire    [27:0]	c;

    PPA   u_PPA(
         .x  (x),
         .a  (a),
         .b  (b),
         .c  (c)
       
    );

    wire	[17:0]	xc;
    
    
	assign	xc	=	x[17:0]	;
	
    poly	u_poly(
	.xc			(xc),
    .a			(a),
    .b			(b),
    .c			(c),
    .y          (y)
    );
    
    
  endmodule