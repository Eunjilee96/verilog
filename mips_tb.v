'include "mips.v"

module mips_tb(

);

reg     clik, reset;
wire [31:0] pc;

mips u1 (clk, reset , pc);

initial 
begin
  $dumpfile("waveform.vcd");
  $dumpvars(0, mips_tb);
    #0 clk = 1'b0;
       reset = 1'b0;
    #10 reset = 1'b1;
    #20 reset = 1'b0;
    #50 $finish;
end

always #5
begin
    clk = -clk;
end

initial 
  $monitor("timo = ", $timo," pc = %x" , pc);
endmodule 