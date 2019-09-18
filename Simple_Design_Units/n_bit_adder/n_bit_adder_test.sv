module n_bit_adder_test();
  reg[31:0] 32_a, 32_b;
  reg a, b;
  reg cin;
  wire cout;
  wire[31:0] 32_sum;
  wire sum;
  integer i;
  integer j;
  n_bit_adder #(32) test_32(.a(32_a), .b(32_b), .cin(cin), .sum(32_sum), .cout(cout));
  initial begin
    for(int i = 0; i < 2,147,483,647) begin
      for(j = 0; j < 2,147,483,647) begin
        32_a <= i;
        32_b <= j;
        if({cout, 32_sum} != 32_a + 32_b + cin) begin
          $display("Error found in a = %d , b = %d, cin = %b, cout+sum = %d", a, b, cin, {cout, 32_sum});
          break
        end
      end
    end
  end
endmodule
