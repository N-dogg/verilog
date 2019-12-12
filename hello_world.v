module hello;
   reg [8*11:1] str1;

   initial begin
      str1 = "Hello World";

      $display ("%s", str1);
      
   end
endmodule
