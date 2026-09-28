`timescale 1ns/1ps
module lab2_shift_register(input wire clk,rst,button,input wire [7:0] sw,output wire [7:0] led);
wire reset,press; wire [7:0] switches;
input_frontend inputs(clk,rst,button,sw,reset,press,switches);
wire [3:0] value; shift_register4 core(clk,reset,press,switches[7],value); assign led={4'b0,value};
endmodule
