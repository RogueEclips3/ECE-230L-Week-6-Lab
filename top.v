module top(
    input [7:0] sw,
    output [5:0] led
);

    light light_inst(
        .down(sw[0]),
        .up(sw[1]),
        .light(led[0])
    );

    adder adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .sum(led[1]),
        .carry(led[2])
    );

    full_adder full_adder_inst_1(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(0),
        .sum(led[3])
    );

    full_adder full_adder_inst_2(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(full_adder_inst_1.Cout),
        .sum(led[4]),
        .Cout(led[5])
    );

endmodule