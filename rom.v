module ROM(
    output [7:0] LED,
    output [4:0] Ao,
    input [7:0] D,
    input [4:0] A,
    input Clear,                //Right button
    input Load                  //Left button
    );
    
    reg [7:0] Store [0:31];
    
    initial
    begin                         
        Store[0]<=4'b00000000;
        Store[1]<=4'b00000000;
        Store[2]<=4'b00000000;
        Store[3]<=4'b00000000;
        Store[4]<=4'b00000000;
        Store[5]<=4'b00000000;
        Store[6]<=4'b00000000;
        Store[7]<=4'b00000000;
        Store[8]<=4'b00000000;
        Store[9]<=4'b00000000;
        Store[10]<=4'b00000000;
        Store[11]<=4'b00000000;
        Store[12]<=4'b00000000;
        Store[13]<=4'b00000000;
        Store[14]<=4'b00000000;
        Store[15]<=4'b00000000;
        Store[16]<=4'b00000000;
        Store[17]<=4'b00000000;
        Store[18]<=4'b00000000;
        Store[19]<=4'b00000000;
        Store[20]<=4'b00000000;
        Store[21]<=4'b00000000;
        Store[22]<=4'b00000000;
        Store[23]<=4'b00000000;
        Store[24]<=4'b00000000;
        Store[25]<=4'b00000000;
        Store[26]<=4'b00000000;
        Store[27]<=4'b00000000;
        Store[28]<=4'b00000000;
        Store[29]<=4'b00000000;
        Store[30]<=4'b00000000;
        Store[31]<=4'b00000000;   
    end

    assign LED = Store[A];              //Displays what is being addressed
    assign Ao = A;                      //show the address in LED
    
    always @ (*) begin
        if (Clear && !Load) begin
            Store[A] <= 8'b00000000;
            end
        else if (Load && !Clear) begin
            Store[A] <= D;
            end
       // else
            ///Store[A] <= Store[A];
     end
endmodule
