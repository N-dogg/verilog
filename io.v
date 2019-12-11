module io (ina, inb, out, clk);  //module <name> (port_list)
   input [7:0] ina, inb;         //2 input ports (ina, inb) with 8 bits each
   input       clk;              //default 1 bit input clicker
   output [15:0] out;            //16 bit output port

endmodule
