`timescale 1ns / 100ps
`default_nettype none

module test_popcount();
    logic clk;
    wire [2:0] ans;

    int max_clocks = 4;
    int i, j;

    popcount _popcount(clk, ans);

    initial begin
        $display("############# start of checking module popcount ##########");
        clk = 0;
        for (i=1;i <= max_clocks; i++) begin
            for (j=0;j<2;j++) begin 
                #10
                clk = ~clk;
            end 
            $display("(clocks, ans) : (%2d, %2d)", i, ans);
        end
        $display("###### end of checking module popcount ######");
        $finish;
    end
endmodule

`default_nettype wire