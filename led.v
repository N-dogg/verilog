module blink (clk, LED);
   input clk;               //port declaration
   output LED;

   reg [31:0] counter;      //data declaration
   reg 	      LED_status;

   initial begin
      counter <= 32'b0;     //initialise all 32 bit counter variables to 0
      LED_status <= 1'b0;   //intialise 1 bit LED_status to 0
   end

   always @ (posedge clk)   //sensitivity list, executing on positive edge transition of clk
     begin
	counter <= counter + 1'b1;  //non-blocking assignment increasing counter by 1 bit
	if (counter > 50000000)     //behavioural statement
	  begin
	     LED_status <= !LED_status; //change LED status - blink
	     counter <= 32'b0;          //resets counter    
	  end
     end
   
   assign LED = LED_status;
endmodule // blink
