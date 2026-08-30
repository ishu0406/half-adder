module half_subtractor(
    input A, B,
    output D, Borrow
);

assign D = A ^ B;
assign Borrow = ~A & B;

endmodule
module full_subtractor(
    input A, B, Bin,
    output D, Bout
);

wire D1, B1, B2;

half_subtractor HS1 (
    .A(A),
    .B(B),
    .D(D1),
    .Borrow(B1)
);

half_subtractor HS2 (
    .A(D1),
    .B(Bin),
    .D(D),
    .Borrow(B2)
);

or G1 (Bout, B1, B2);

endmodule