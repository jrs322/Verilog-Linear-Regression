
module n_bit_adder #(parameter n = 0;)
(a, b, cin, sum, cout);
  input [n-1:0] a, b;
  input cin;
  output [n-1:0] sum
  output cout;

  always_comb begin
    {cout, sum} = a + b + cin;
  end
endmodule
