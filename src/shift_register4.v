`timescale 1ns/1ps
module shift_register4(input wire clk,rst,enable,serial_in,output reg [3:0] value);
always @(posedge clk) if(rst) value<=0;else if(enable) value<={serial_in,value[3:1]};
endmodule