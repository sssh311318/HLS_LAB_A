// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrixmul_matrixmul,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcu50-fsvh2104-2-e,HLS_INPUT_CLOCK=13.330000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.195000,HLS_SYN_LAT=15,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=199,HLS_SYN_LUT=245,HLS_VERSION=2022_1}" *)

module matrixmul (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_address0,
        a_ce0,
        a_q0,
        b_address0,
        b_ce0,
        b_q0,
        res_address0,
        res_ce0,
        res_we0,
        res_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] a_address0;
output   a_ce0;
input  [23:0] a_q0;
output  [1:0] b_address0;
output   b_ce0;
input  [23:0] b_q0;
output  [3:0] res_address0;
output   res_ce0;
output   res_we0;
output  [15:0] res_d0;

reg ap_idle;
reg a_ce0;
reg b_ce0;
reg res_ce0;
reg res_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln54_fu_131_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] select_ln54_fu_161_p3;
reg   [1:0] select_ln54_reg_354;
reg   [1:0] select_ln54_reg_354_pp0_iter1_reg;
reg   [1:0] select_ln54_reg_354_pp0_iter2_reg;
reg   [1:0] select_ln54_reg_354_pp0_iter3_reg;
reg   [1:0] select_ln54_reg_354_pp0_iter4_reg;
wire   [1:0] select_ln54_1_fu_169_p3;
reg   [1:0] select_ln54_1_reg_359;
reg   [1:0] select_ln54_1_reg_359_pp0_iter1_reg;
reg   [1:0] select_ln54_1_reg_359_pp0_iter2_reg;
reg   [1:0] select_ln54_1_reg_359_pp0_iter3_reg;
reg   [1:0] select_ln54_1_reg_359_pp0_iter4_reg;
wire   [7:0] empty_8_fu_208_p1;
reg   [7:0] empty_8_reg_375;
reg  signed [7:0] empty_8_reg_375_pp0_iter2_reg;
reg  signed [7:0] tmp_reg_380;
wire   [7:0] trunc_ln60_fu_236_p1;
reg   [7:0] trunc_ln60_reg_390;
reg  signed [7:0] trunc_ln60_reg_390_pp0_iter2_reg;
reg  signed [7:0] tmp_1_reg_395;
wire  signed [15:0] mul_ln60_fu_276_p2;
wire   [15:0] grp_fu_312_p3;
wire   [63:0] zext_ln54_fu_177_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_fu_182_p1;
wire   [63:0] zext_ln60_2_fu_307_p1;
reg   [1:0] j_fu_62;
wire   [1:0] add_ln56_fu_187_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_j_load;
reg   [1:0] i_fu_66;
reg   [1:0] ap_sig_allocacmp_i_load;
reg   [3:0] indvar_flatten_fu_70;
wire   [3:0] add_ln54_1_fu_137_p2;
reg   [3:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [15:0] grp_fu_320_p3;
wire   [0:0] icmp_ln56_fu_155_p2;
wire   [1:0] add_ln54_fu_149_p2;
wire  signed [7:0] tmp_s_fu_222_p4;
wire  signed [7:0] tmp_2_fu_250_p4;
wire   [3:0] tmp_4_fu_285_p3;
wire   [3:0] zext_ln60_fu_282_p1;
wire   [3:0] sub_ln60_fu_292_p2;
wire   [3:0] zext_ln60_1_fu_298_p1;
wire   [3:0] add_ln60_2_fu_301_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_156;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_done_reg = 1'b0;
end

matrixmul_mul_8s_8s_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mul_8s_8s_16_1_1_U1(
    .din0(trunc_ln60_reg_390_pp0_iter2_reg),
    .din1(empty_8_reg_375_pp0_iter2_reg),
    .dout(mul_ln60_fu_276_p2)
);

matrixmul_mac_muladd_8s_8s_16s_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_8s_8s_16s_16_4_1_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_2_fu_250_p4),
    .din1(tmp_s_fu_222_p4),
    .din2(mul_ln60_fu_276_p2),
    .ce(1'b1),
    .dout(grp_fu_312_p3)
);

matrixmul_mac_muladd_8s_8s_16ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_8s_8s_16ns_16_4_1_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_1_reg_395),
    .din1(tmp_reg_380),
    .din2(grp_fu_312_p3),
    .ce(1'b1),
    .dout(grp_fu_320_p3)
);

matrixmul_flow_control_loop_pipe flow_control_loop_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(1'b1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_156)) begin
        if ((icmp_ln54_fu_131_p2 == 1'd0)) begin
            i_fu_66 <= select_ln54_1_fu_169_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_66 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_156)) begin
        if ((icmp_ln54_fu_131_p2 == 1'd0)) begin
            indvar_flatten_fu_70 <= add_ln54_1_fu_137_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_70 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_156)) begin
        if ((icmp_ln54_fu_131_p2 == 1'd0)) begin
            j_fu_62 <= add_ln56_fu_187_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_62 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_8_reg_375 <= empty_8_fu_208_p1;
        select_ln54_1_reg_359_pp0_iter1_reg <= select_ln54_1_reg_359;
        select_ln54_reg_354_pp0_iter1_reg <= select_ln54_reg_354;
        tmp_1_reg_395 <= {{b_q0[15:8]}};
        tmp_reg_380 <= {{a_q0[15:8]}};
        trunc_ln60_reg_390 <= trunc_ln60_fu_236_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        empty_8_reg_375_pp0_iter2_reg <= empty_8_reg_375;
        select_ln54_1_reg_359_pp0_iter2_reg <= select_ln54_1_reg_359_pp0_iter1_reg;
        select_ln54_1_reg_359_pp0_iter3_reg <= select_ln54_1_reg_359_pp0_iter2_reg;
        select_ln54_1_reg_359_pp0_iter4_reg <= select_ln54_1_reg_359_pp0_iter3_reg;
        select_ln54_reg_354_pp0_iter2_reg <= select_ln54_reg_354_pp0_iter1_reg;
        select_ln54_reg_354_pp0_iter3_reg <= select_ln54_reg_354_pp0_iter2_reg;
        select_ln54_reg_354_pp0_iter4_reg <= select_ln54_reg_354_pp0_iter3_reg;
        trunc_ln60_reg_390_pp0_iter2_reg <= trunc_ln60_reg_390;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln54_fu_131_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln54_1_reg_359 <= select_ln54_1_fu_169_p3;
        select_ln54_reg_354 <= select_ln54_fu_161_p3;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln54_fu_131_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 2'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_66;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_70;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 2'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_62;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        res_ce0 = 1'b1;
    end else begin
        res_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        res_we0 = 1'b1;
    end else begin
        res_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = zext_ln54_fu_177_p1;

assign add_ln54_1_fu_137_p2 = (ap_sig_allocacmp_indvar_flatten_load + 4'd1);

assign add_ln54_fu_149_p2 = (ap_sig_allocacmp_i_load + 2'd1);

assign add_ln56_fu_187_p2 = (select_ln54_fu_161_p3 + 2'd1);

assign add_ln60_2_fu_301_p2 = (sub_ln60_fu_292_p2 + zext_ln60_1_fu_298_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_156 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign b_address0 = zext_ln56_fu_182_p1;

assign empty_8_fu_208_p1 = a_q0[7:0];

assign icmp_ln54_fu_131_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 4'd9) ? 1'b1 : 1'b0);

assign icmp_ln56_fu_155_p2 = ((ap_sig_allocacmp_j_load == 2'd3) ? 1'b1 : 1'b0);

assign res_address0 = zext_ln60_2_fu_307_p1;

assign res_d0 = grp_fu_320_p3;

assign select_ln54_1_fu_169_p3 = ((icmp_ln56_fu_155_p2[0:0] == 1'b1) ? add_ln54_fu_149_p2 : ap_sig_allocacmp_i_load);

assign select_ln54_fu_161_p3 = ((icmp_ln56_fu_155_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_j_load);

assign sub_ln60_fu_292_p2 = (tmp_4_fu_285_p3 - zext_ln60_fu_282_p1);

assign tmp_2_fu_250_p4 = {{b_q0[23:16]}};

assign tmp_4_fu_285_p3 = {{select_ln54_1_reg_359_pp0_iter4_reg}, {2'd0}};

assign tmp_s_fu_222_p4 = {{a_q0[23:16]}};

assign trunc_ln60_fu_236_p1 = b_q0[7:0];

assign zext_ln54_fu_177_p1 = select_ln54_1_fu_169_p3;

assign zext_ln56_fu_182_p1 = select_ln54_fu_161_p3;

assign zext_ln60_1_fu_298_p1 = select_ln54_reg_354_pp0_iter4_reg;

assign zext_ln60_2_fu_307_p1 = add_ln60_2_fu_301_p2;

assign zext_ln60_fu_282_p1 = select_ln54_1_reg_359_pp0_iter4_reg;

endmodule //matrixmul
