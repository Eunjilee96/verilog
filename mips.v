module pcreg (
input wire clk,
input wire reset,
output reg [31:0] pc,
input wire [31:0] pcnext
    );

always @(posedge clk, posedge reset)begin
        if  (reset) pc <= 32'h00000000;
        else        pc <=  pcnext;
    end 

endmodule


module myadder( 
     input [31:0] a,
     input [31:0] b,
     output [31:0] y
     );

      assign y=a+b; 
endmodule

module mips(
        input wire clk,
        input wire reset,
        output wire [31:0] pc
        );

        wire [31:0] pcnext;
        // instantiate pc
        pcreg mips_pc (.clk (clk), 
                        .reset (reset),
                        .pc (pc), 
                        .pcnext(pcnext));
        // instantiate adder
        myadder pcadd4 (.a (pc), 
                        .b (32'b100), 
                        .y (pcnext));
endmodule 