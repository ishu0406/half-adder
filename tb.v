module tb_full_subtractor;

reg A, B, Bin;
wire D, Bout;

full_subtractor uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .D(D),
    .Bout(Bout)
);

initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0, tb_full_subtractor);
    A=0; B=0; Bin=0; #10;
    A=0; B=0; Bin=1; #10;
    A=0; B=1; Bin=0; #10;
    A=0; B=1; Bin=1; #10;
    A=1; B=0; Bin=0; #10;
    A=1; B=0; Bin=1; #10;
    A=1; B=1; Bin=0; #10;
    A=1; B=1; Bin=1; #10;

    $finish;
end

initial
    $monitor("A=%b B=%b Bin=%b | D=%b Bout=%b",
        A, B, Bin, D, Bout);

endmodule