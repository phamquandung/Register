`timescale 100ns / 10ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2018 05:39:00 PM
// Design Name: 
// Module Name: Testbench_Register
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


module Testbench_Register();
reg clk, write;
reg [5:0] ReadRegID1,ReadRegID2, WriteRegID;
reg [31:0] WriteData;
wire [31:0]ReadData1, ReadData2;

always #0.5 clk = ~clk;
Register register(.clk(clk), .write(write), .ReadRegID1(ReadRegID1),.ReadRegID2(ReadRegID2), .WriteRegID(WriteRegID), .WriteData(WriteData), .ReadData1(ReadData1), .ReadData2(ReadData2));
initial
    begin
        clk = 1;
        write = 0;
        WriteRegID = 6'd1;
        push(32'd1);
        WriteRegID = 6'd2;
        push(32'd2);
        WriteRegID = 6'd3;
        push(32'd3);
        WriteRegID = 6'd4;
        push(32'd4);
        WriteRegID = 6'd6;
        push(32'd5);
        WriteRegID = 6'd7;
        push(32'd6);
        WriteRegID = 6'd8;
        push(32'd7);
        WriteRegID = 6'd9;
        push(32'd8);
        WriteRegID = 6'd10;
        push(32'd9);
        WriteRegID = 6'd11;
        push(32'd10);
        WriteRegID = 6'd12;
        push(32'd11);
        WriteRegID = 6'd13;
        push(32'd12);
        WriteRegID = 6'd14;
        push(32'd13);
        WriteRegID = 6'd15;
        push(32'd14);
        WriteRegID = 6'd16;
        push(32'd15);
        WriteRegID = 6'd17;
        push(32'd16);
        WriteRegID = 6'd18;
        push(32'd17);
        WriteRegID = 6'd19;
        push(32'd18);
        WriteRegID = 6'd20;
        push(32'd19);
        WriteRegID = 6'd21;
        push(32'd20);
        WriteRegID = 6'd22;
        push(32'd21);
        WriteRegID = 6'd23;
        push(32'd22);
        WriteRegID = 6'd24;
        push(32'd23);
        WriteRegID = 6'd25;
        push(32'd24);
        WriteRegID = 6'd26;
        push(32'd25);
        WriteRegID = 6'd27;
        push(32'd26);
        WriteRegID = 6'd28;
        push(32'd27);
        WriteRegID = 6'd29;
        push(32'd28);
        WriteRegID = 6'd30;
        push(32'd29);
        WriteRegID = 6'd31;
        push(32'd30);
        WriteRegID = 6'd32;
        push(32'd31);
        ReadRegID1 = 6'd1;
        #1
        //ReadRegID1 = 6'd32;
        //ReadRegID2 = 6'd1;
        ReadRegID1 = 6'd2;
        ReadRegID2 = 6'd2;
        //WriteRegID = 6'd10;
    end
    
task push;
        input[31:0] data;
            begin
                $display("Pushed ",data );
                WriteData = data;
                write = 1;
                //@(posedge clk);
                #1 write = 0;
            end    
    endtask
endmodule
