// Here is the main module which specifies whether the given instruction was a hit or a miss.
module main(instruction, clk, hit);
    input [31:0]instruction;
    input clk;
    output reg hit;

    // This is the signal generated by the cache which will be used to determine whether it was a hit or a miss.
    wire signal;

    cache c(instruction,clk,signal);
    always @* begin
      if(signal == 1)
      begin
        hit <= 1;
      end
      else if(signal == 0)
      begin
        hit <= 0;
      end
    end
endmodule
