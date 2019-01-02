`timescale 100ns / 10ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2018 05:38:25 PM
// Design Name: 
// Module Name: Register
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Register(clk, write, ReadRegID1,ReadRegID2, WriteRegID, WriteData, ReadData1, ReadData2);
//input and ouput
input clk, write;
input [5:0] ReadRegID1,ReadRegID2, WriteRegID;
input [31:0] WriteData;
output reg [31:0]ReadData1, ReadData2;

//internal variable
reg [5:0] stt_cnt;
reg [31:0] data_ram[5:0]; //32 32-bit registers
//Write Data
always@(posedge clk)
    begin
        if (write && (WriteRegID < 6'b100000)) //addr < 32, addr = [0..31]
            begin
                data_ram[WriteRegID] = WriteData;
                //stt_cnt = stt_cnt + 1;
            end             
    end
//Read Data
always@(posedge clk)
    begin
        if (ReadRegID1 != 0)
            ReadData1 = data_ram[ReadRegID1];
        if (ReadRegID2 != 0)
            ReadData2 = data_ram[ReadRegID2];
    end
endmodule
