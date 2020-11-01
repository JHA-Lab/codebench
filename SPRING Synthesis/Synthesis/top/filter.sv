module filter
(
	clk,
	reset,
	i_0,
	i_1,
	i_2,
	i_3,
	i_4,
	i_5,
	i_6,
	i_7,
	i_8,
	i_9,
	i_10,
	i_11,
	i_12,
	i_13,
	i_14,
	i_15,
	w_0,
	w_1,
	w_2,
	w_3,
	w_4,
	w_5,
	w_6,
	w_7,
	w_8,
	w_9,
	w_10,
	w_11,
	w_12,
	w_13,
	w_14,
	w_15,
	o_mask,
	xor_i_mask,
	xor_w_mask,
	input_ready,
	output_taken,
	oi_0,
	oi_1,
	oi_2,
	oi_3,
	oi_4,
	oi_5,
	oi_6,
	oi_7,
	oi_8,
	oi_9,
	oi_10,
	oi_11,
	oi_12,
	oi_13,
	oi_14,
	oi_15,
	ow_0,
	ow_1,
	ow_2,
	ow_3,
	ow_4,
	ow_5,
	ow_6,
	ow_7,
	ow_8,
	ow_9,
	ow_10,
	ow_11,
	ow_12,
	ow_13,
	ow_14,
	ow_15,
	state,
	input_taken
);

parameter IL = 8, FL = 12;
parameter length = 32;
parameter p_length = $clog2(length);

input clk, reset;
input signed [IL+FL-1:0] i_0;
input signed [IL+FL-1:0] i_1;
input signed [IL+FL-1:0] i_2;
input signed [IL+FL-1:0] i_3;
input signed [IL+FL-1:0] i_4;
input signed [IL+FL-1:0] i_5;
input signed [IL+FL-1:0] i_6;
input signed [IL+FL-1:0] i_7;
input signed [IL+FL-1:0] i_8;
input signed [IL+FL-1:0] i_9;
input signed [IL+FL-1:0] i_10;
input signed [IL+FL-1:0] i_11;
input signed [IL+FL-1:0] i_12;
input signed [IL+FL-1:0] i_13;
input signed [IL+FL-1:0] i_14;
input signed [IL+FL-1:0] i_15;
input signed [IL+FL-1:0] w_0;
input signed [IL+FL-1:0] w_1;
input signed [IL+FL-1:0] w_2;
input signed [IL+FL-1:0] w_3;
input signed [IL+FL-1:0] w_4;
input signed [IL+FL-1:0] w_5;
input signed [IL+FL-1:0] w_6;
input signed [IL+FL-1:0] w_7;
input signed [IL+FL-1:0] w_8;
input signed [IL+FL-1:0] w_9;
input signed [IL+FL-1:0] w_10;
input signed [IL+FL-1:0] w_11;
input signed [IL+FL-1:0] w_12;
input signed [IL+FL-1:0] w_13;
input signed [IL+FL-1:0] w_14;
input signed [IL+FL-1:0] w_15;

input [length-1:0] o_mask;
input [length-1:0] xor_i_mask;
input [length-1:0] xor_w_mask;

input input_ready;
input output_taken;

output logic signed [IL+FL-1:0] oi_0;
output logic signed [IL+FL-1:0] oi_1;
output logic signed [IL+FL-1:0] oi_2;
output logic signed [IL+FL-1:0] oi_3;
output logic signed [IL+FL-1:0] oi_4;
output logic signed [IL+FL-1:0] oi_5;
output logic signed [IL+FL-1:0] oi_6;
output logic signed [IL+FL-1:0] oi_7;
output logic signed [IL+FL-1:0] oi_8;
output logic signed [IL+FL-1:0] oi_9;
output logic signed [IL+FL-1:0] oi_10;
output logic signed [IL+FL-1:0] oi_11;
output logic signed [IL+FL-1:0] oi_12;
output logic signed [IL+FL-1:0] oi_13;
output logic signed [IL+FL-1:0] oi_14;
output logic signed [IL+FL-1:0] oi_15;
output logic signed [IL+FL-1:0] ow_0;
output logic signed [IL+FL-1:0] ow_1;
output logic signed [IL+FL-1:0] ow_2;
output logic signed [IL+FL-1:0] ow_3;
output logic signed [IL+FL-1:0] ow_4;
output logic signed [IL+FL-1:0] ow_5;
output logic signed [IL+FL-1:0] ow_6;
output logic signed [IL+FL-1:0] ow_7;
output logic signed [IL+FL-1:0] ow_8;
output logic signed [IL+FL-1:0] ow_9;
output logic signed [IL+FL-1:0] ow_10;
output logic signed [IL+FL-1:0] ow_11;
output logic signed [IL+FL-1:0] ow_12;
output logic signed [IL+FL-1:0] ow_13;
output logic signed [IL+FL-1:0] ow_14;
output logic signed [IL+FL-1:0] ow_15;

// 00 ready
// 01 computing
// 10 done, waiting for taken
output logic [1:0] state;
output logic input_taken;

logic [p_length-1:0] m_pointer;
logic [p_length-1:0] next_m_pointer;
logic [3:0] i_pointer;
logic [3:0] w_pointer;
logic [3:0] next_i_pointer;
logic [3:0] next_w_pointer;

logic signed [IL+FL-1:0] reg_i_0;
logic signed [IL+FL-1:0] reg_i_1;
logic signed [IL+FL-1:0] reg_i_2;
logic signed [IL+FL-1:0] reg_i_3;
logic signed [IL+FL-1:0] reg_i_4;
logic signed [IL+FL-1:0] reg_i_5;
logic signed [IL+FL-1:0] reg_i_6;
logic signed [IL+FL-1:0] reg_i_7;
logic signed [IL+FL-1:0] reg_i_8;
logic signed [IL+FL-1:0] reg_i_9;
logic signed [IL+FL-1:0] reg_i_10;
logic signed [IL+FL-1:0] reg_i_11;
logic signed [IL+FL-1:0] reg_i_12;
logic signed [IL+FL-1:0] reg_i_13;
logic signed [IL+FL-1:0] reg_i_14;
logic signed [IL+FL-1:0] reg_i_15;
logic signed [IL+FL-1:0] reg_w_0;
logic signed [IL+FL-1:0] reg_w_1;
logic signed [IL+FL-1:0] reg_w_2;
logic signed [IL+FL-1:0] reg_w_3;
logic signed [IL+FL-1:0] reg_w_4;
logic signed [IL+FL-1:0] reg_w_5;
logic signed [IL+FL-1:0] reg_w_6;
logic signed [IL+FL-1:0] reg_w_7;
logic signed [IL+FL-1:0] reg_w_8;
logic signed [IL+FL-1:0] reg_w_9;
logic signed [IL+FL-1:0] reg_w_10;
logic signed [IL+FL-1:0] reg_w_11;
logic signed [IL+FL-1:0] reg_w_12;
logic signed [IL+FL-1:0] reg_w_13;
logic signed [IL+FL-1:0] reg_w_14;
logic signed [IL+FL-1:0] reg_w_15;
logic [length-1:0] reg_o_mask;
logic [length-1:0] reg_xor_i_mask;
logic [length-1:0] reg_xor_w_mask;

logic signed [IL+FL-1:0] pre_oi_0;
logic signed [IL+FL-1:0] pre_oi_1;
logic signed [IL+FL-1:0] pre_oi_2;
logic signed [IL+FL-1:0] pre_oi_3;
logic signed [IL+FL-1:0] pre_oi_4;
logic signed [IL+FL-1:0] pre_oi_5;
logic signed [IL+FL-1:0] pre_oi_6;
logic signed [IL+FL-1:0] pre_oi_7;
logic signed [IL+FL-1:0] pre_oi_8;
logic signed [IL+FL-1:0] pre_oi_9;
logic signed [IL+FL-1:0] pre_oi_10;
logic signed [IL+FL-1:0] pre_oi_11;
logic signed [IL+FL-1:0] pre_oi_12;
logic signed [IL+FL-1:0] pre_oi_13;
logic signed [IL+FL-1:0] pre_oi_14;
logic signed [IL+FL-1:0] pre_oi_15;
logic signed [IL+FL-1:0] pre_ow_0;
logic signed [IL+FL-1:0] pre_ow_1;
logic signed [IL+FL-1:0] pre_ow_2;
logic signed [IL+FL-1:0] pre_ow_3;
logic signed [IL+FL-1:0] pre_ow_4;
logic signed [IL+FL-1:0] pre_ow_5;
logic signed [IL+FL-1:0] pre_ow_6;
logic signed [IL+FL-1:0] pre_ow_7;
logic signed [IL+FL-1:0] pre_ow_8;
logic signed [IL+FL-1:0] pre_ow_9;
logic signed [IL+FL-1:0] pre_ow_10;
logic signed [IL+FL-1:0] pre_ow_11;
logic signed [IL+FL-1:0] pre_ow_12;
logic signed [IL+FL-1:0] pre_ow_13;
logic signed [IL+FL-1:0] pre_ow_14;
logic signed [IL+FL-1:0] pre_ow_15;

logic done;

always_ff @(posedge clk) begin
	if (reset == 1) begin
		state <= 2'b00;
	end
	else begin
		if (state == 2'b00 && input_ready == 1) begin
			state <= 2'b01;
		end
		if (state == 2'b01 && done == 1) begin
			state <= 2'b10;
		end
		if (state == 2'b10 && output_taken == 1) begin
			state <= 2'b00;
		end
	end
end

always_ff @(posedge clk) begin
	if (reset == 1 || (state == 2'b10 && output_taken == 1)) begin
		reg_i_0 <= {(IL+FL){1'b0}};
		reg_i_1 <= {(IL+FL){1'b0}};
		reg_i_2 <= {(IL+FL){1'b0}};
		reg_i_3 <= {(IL+FL){1'b0}};
		reg_i_4 <= {(IL+FL){1'b0}};
		reg_i_5 <= {(IL+FL){1'b0}};
		reg_i_6 <= {(IL+FL){1'b0}};
		reg_i_7 <= {(IL+FL){1'b0}};
		reg_i_8 <= {(IL+FL){1'b0}};
		reg_i_9 <= {(IL+FL){1'b0}};
		reg_i_10 <= {(IL+FL){1'b0}};
		reg_i_11 <= {(IL+FL){1'b0}};
		reg_i_12 <= {(IL+FL){1'b0}};
		reg_i_13 <= {(IL+FL){1'b0}};
		reg_i_14 <= {(IL+FL){1'b0}};
		reg_i_15 <= {(IL+FL){1'b0}};
		reg_w_0 <= {(IL+FL){1'b0}};
		reg_w_1 <= {(IL+FL){1'b0}};
		reg_w_2 <= {(IL+FL){1'b0}};
		reg_w_3 <= {(IL+FL){1'b0}};
		reg_w_4 <= {(IL+FL){1'b0}};
		reg_w_5 <= {(IL+FL){1'b0}};
		reg_w_6 <= {(IL+FL){1'b0}};
		reg_w_7 <= {(IL+FL){1'b0}};
		reg_w_8 <= {(IL+FL){1'b0}};
		reg_w_9 <= {(IL+FL){1'b0}};
		reg_w_10 <= {(IL+FL){1'b0}};
		reg_w_11 <= {(IL+FL){1'b0}};
		reg_w_12 <= {(IL+FL){1'b0}};
		reg_w_13 <= {(IL+FL){1'b0}};
		reg_w_14 <= {(IL+FL){1'b0}};
		reg_w_15 <= {(IL+FL){1'b0}};

		reg_o_mask <= {(length){1'b0}};
		reg_xor_i_mask <= {(length){1'b0}};
		reg_xor_w_mask <= {(length){1'b0}};
		
		input_taken <= 0;
	end
	else begin
		if (state == 2'b00 && input_ready == 1) begin
			reg_i_0 <= i_0;
			reg_i_1 <= i_1;
			reg_i_2 <= i_2;
			reg_i_3 <= i_3;
			reg_i_4 <= i_4;
			reg_i_5 <= i_5;
			reg_i_6 <= i_6;
			reg_i_7 <= i_7;
			reg_i_8 <= i_8;
			reg_i_9 <= i_9;
			reg_i_10 <= i_10;
			reg_i_11 <= i_11;
			reg_i_12 <= i_12;
			reg_i_13 <= i_13;
			reg_i_14 <= i_14;
			reg_i_15 <= i_15;
			reg_w_0 <= w_0;
			reg_w_1 <= w_1;
			reg_w_2 <= w_2;
			reg_w_3 <= w_3;
			reg_w_4 <= w_4;
			reg_w_5 <= w_5;
			reg_w_6 <= w_6;
			reg_w_7 <= w_7;
			reg_w_8 <= w_8;
			reg_w_9 <= w_9;
			reg_w_10 <= w_10;
			reg_w_11 <= w_11;
			reg_w_12 <= w_12;
			reg_w_13 <= w_13;
			reg_w_14 <= w_14;
			reg_w_15 <= w_15;

			reg_o_mask <= o_mask;
			reg_xor_i_mask <= xor_i_mask;
			reg_xor_w_mask <= xor_w_mask;

			input_taken <= 1;
		end
	end
end

always_ff @(posedge clk) begin
	if (reset == 1 || (state == 2'b10 && output_taken == 1)) begin
		m_pointer <= {(p_length){1'b0}};
		i_pointer <= 4'b0;
		w_pointer <= 4'b0;
	end
	else begin
		if (state == 2'b01) begin
			m_pointer <= next_m_pointer;
			i_pointer <= next_i_pointer;
			w_pointer <= next_w_pointer;
		end
	end
end


always_comb begin
	if (state == 2'b01) begin
		if (reg_o_mask[m_pointer] == 1) begin
			case (i_pointer)
				4'd0:pre_oi_0 = reg_i_0;
				4'd1:pre_oi_1 = reg_i_1;
				4'd2:pre_oi_2 = reg_i_2;
				4'd3:pre_oi_3 = reg_i_3;
				4'd4:pre_oi_4 = reg_i_4;
				4'd5:pre_oi_5 = reg_i_5;
				4'd6:pre_oi_6 = reg_i_6;
				4'd7:pre_oi_7 = reg_i_7;
				4'd8:pre_oi_8 = reg_i_8;
				4'd9:pre_oi_9 = reg_i_9;
				4'd10:pre_oi_10 = reg_i_10;
				4'd11:pre_oi_11 = reg_i_11;
				4'd12:pre_oi_12 = reg_i_12;
				4'd13:pre_oi_13 = reg_i_13;
				4'd14:pre_oi_14 = reg_i_14;
				4'd15:pre_oi_15 = reg_i_15;
				default:pre_oi_0 = reg_i_0;
			endcase
			case (w_pointer)
				4'd0:pre_ow_0 = reg_w_0;
				4'd1:pre_ow_1 = reg_w_1;
				4'd2:pre_ow_2 = reg_w_2;
				4'd3:pre_ow_3 = reg_w_3;
				4'd4:pre_ow_4 = reg_w_4;
				4'd5:pre_ow_5 = reg_w_5;
				4'd6:pre_ow_6 = reg_w_6;
				4'd7:pre_ow_7 = reg_w_7;
				4'd8:pre_ow_8 = reg_w_8;
				4'd9:pre_ow_9 = reg_w_9;
				4'd10:pre_ow_10 = reg_w_10;
				4'd11:pre_ow_11 = reg_w_11;
				4'd12:pre_ow_12 = reg_w_12;
				4'd13:pre_ow_13 = reg_w_13;
				4'd14:pre_ow_14 = reg_w_14;
				4'd15:pre_ow_15 = reg_w_15;
				default:pre_ow_0 = reg_w_0;
			endcase

			next_m_pointer = m_pointer + 1;
			next_i_pointer = i_pointer + 1;
			next_w_pointer = w_pointer + 1;	
		end
		else begin
			if (reg_xor_i_mask[m_pointer] == 1) begin
				next_i_pointer = i_pointer + 1;
			end
			else begin
				next_i_pointer = i_pointer;
			end

			if (reg_xor_w_mask[m_pointer] == 1) begin
				next_w_pointer = w_pointer + 1;
			end
			else begin
				next_w_pointer = w_pointer;
			end

			next_m_pointer = m_pointer + 1;
		end
	end
end

always_ff @(posedge clk) begin
	if (reset == 1 || (state == 2'b10 && output_taken ==1)) begin
		oi_0 <= {(IL+FL){1'b0}};
		oi_1 <= {(IL+FL){1'b0}};
		oi_2 <= {(IL+FL){1'b0}};
		oi_3 <= {(IL+FL){1'b0}};
		oi_4 <= {(IL+FL){1'b0}};
		oi_5 <= {(IL+FL){1'b0}};
		oi_6 <= {(IL+FL){1'b0}};
		oi_7 <= {(IL+FL){1'b0}};
		oi_8 <= {(IL+FL){1'b0}};
		oi_9 <= {(IL+FL){1'b0}};
		oi_10 <= {(IL+FL){1'b0}};
		oi_11 <= {(IL+FL){1'b0}};
		oi_12 <= {(IL+FL){1'b0}};
		oi_13 <= {(IL+FL){1'b0}};
		oi_14 <= {(IL+FL){1'b0}};
		oi_15 <= {(IL+FL){1'b0}};
		ow_0 <= {(IL+FL){1'b0}};
		ow_1 <= {(IL+FL){1'b0}};
		ow_2 <= {(IL+FL){1'b0}};
		ow_3 <= {(IL+FL){1'b0}};
		ow_4 <= {(IL+FL){1'b0}};
		ow_5 <= {(IL+FL){1'b0}};
		ow_6 <= {(IL+FL){1'b0}};
		ow_7 <= {(IL+FL){1'b0}};
		ow_8 <= {(IL+FL){1'b0}};
		ow_9 <= {(IL+FL){1'b0}};
		ow_10 <= {(IL+FL){1'b0}};
		ow_11 <= {(IL+FL){1'b0}};
		ow_12 <= {(IL+FL){1'b0}};
		ow_13 <= {(IL+FL){1'b0}};
		ow_14 <= {(IL+FL){1'b0}};
		ow_15 <= {(IL+FL){1'b0}};
	end
	else begin
		if (state == 2'b01 && reg_o_mask[m_pointer] == 1) begin
			case (i_pointer)
				4'd0:oi_0 <= pre_oi_0;
				4'd1:oi_1 <= pre_oi_1;
				4'd2:oi_2 <= pre_oi_2;
				4'd3:oi_3 <= pre_oi_3;
				4'd4:oi_4 <= pre_oi_4;
				4'd5:oi_5 <= pre_oi_5;
				4'd6:oi_6 <= pre_oi_6;
				4'd7:oi_7 <= pre_oi_7;
				4'd8:oi_8 <= pre_oi_8;
				4'd9:oi_9 <= pre_oi_9;
				4'd10:oi_10 <= pre_oi_10;
				4'd11:oi_11 <= pre_oi_11;
				4'd12:oi_12 <= pre_oi_12;
				4'd13:oi_13 <= pre_oi_13;
				4'd14:oi_14 <= pre_oi_14;
				4'd15:oi_15 <= pre_oi_15;
				default:oi_0 <= pre_oi_0;
			endcase
		
			case (w_pointer)
				4'd0:ow_0 <= pre_ow_0;
				4'd1:ow_1 <= pre_ow_1;
				4'd2:ow_2 <= pre_ow_2;
				4'd3:ow_3 <= pre_ow_3;
				4'd4:ow_4 <= pre_ow_4;
				4'd5:ow_5 <= pre_ow_5;
				4'd6:ow_6 <= pre_ow_6;
				4'd7:ow_7 <= pre_ow_7;
				4'd8:ow_8 <= pre_ow_8;
				4'd9:ow_9 <= pre_ow_9;
				4'd10:ow_10 <= pre_ow_10;
				4'd11:ow_11 <= pre_ow_11;
				4'd12:ow_12 <= pre_ow_12;
				4'd13:ow_13 <= pre_ow_13;
				4'd14:ow_14 <= pre_ow_14;
				4'd15:ow_15 <= pre_ow_15;
				default:ow_0 <= pre_ow_0;
			endcase
		end
	end
end

always_ff @(posedge clk) begin
	if (m_pointer == {(p_length){1'b1}}) begin
		done <= 1;
	end
	else begin
		done <= 0;
	end
end

endmodule