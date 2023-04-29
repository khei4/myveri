module popcount
(
    input wire clk,
    output wire [2:0] ans );

    reg [3:0] x0;
    reg [3:0] x1;

    reg [1:0] ans0;
    reg [1:0] ans1;

    initial begin 
        x0 <= 4'd10;
        x1 <= 3'd7;
        ans0 <= 2'd0;
        ans1 <= 2'd0;
    end
    always @(posedge clk) begin
        ans0 <= ans0 + {1'b0, x0[0]};
        x0 <= x0 >> 1;


        ans1 <= ans1 + {1'b0, x1[0]};
        x1 <= x1 >> 1;
    end
endmodule
