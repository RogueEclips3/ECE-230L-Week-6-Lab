module light(
    input down, up,
    output light
);

    assign light = down ^ up;

endmodule