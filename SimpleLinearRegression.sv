
module linear_regression_calculator #(parameter DATA_LENGTH = 20;)(DATASET);
  input [DATA_LENGTH-1] DATASET[1:0];
  output [31:0] b_intercept, a_gradient;
endmodule

module error_calculator(gradient, intercept, independent_x, actual_y,
  predicted_y, error);
  input [31:0] gradient, intercept, independent_x, actual_y;
  output[31:0] predicted_y, error;
endmodule
