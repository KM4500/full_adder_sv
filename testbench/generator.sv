class generator;
  transaction tr;
  mailbox mbox;
  
  function new(mailbox mbox);
    this.mbox=mbox;
  endfunction
  
  task run();
    begin
      tr=new();
      tr.a=1;
      tr.b=1;
      tr.cin=0;
    
    $display("a=%d b=%d cin=%d",tr.a,tr.b,tr.cin);
      mbox.put(tr);
       end
  endtask
endclass
        
