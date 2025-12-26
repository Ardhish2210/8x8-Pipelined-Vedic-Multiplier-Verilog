module full_adder (
    e,f,cin,sum,cout
);

    input e,f,cin;
    output sum,cout;

    assign sum = e ^ f ^ cin;
    assign cout = (e&f) | (f&cin) | (e&cin);
endmodule