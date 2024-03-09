`include "interface.sv"
`include "test.sv"

module testbench;
  fa_intf pif();
  test tb(pif);
  
  fa f1(.a(pif.a),.b(pif.b),.cin(pif.cin),.sum(pif.sum),.cout(pif.cout));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
  end
endmodule
