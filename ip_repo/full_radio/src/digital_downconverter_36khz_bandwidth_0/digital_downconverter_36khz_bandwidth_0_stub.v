// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Apr 19 14:30:58 2025
// Host        : tyler-GL702VSK running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tyler/EN525742/lab7_take3/radio_periph_lab/ip_repo/full_radio/src/digital_downconverter_36khz_bandwidth_0/digital_downconverter_36khz_bandwidth_0_stub.v
// Design      : digital_downconverter_36khz_bandwidth_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "lab2_hw_design_wrapper,Vivado 2023.2" *)
module digital_downconverter_36khz_bandwidth_0(aclk, aresetn, m_axis_i_out_tdata, 
  m_axis_i_out_tvalid, m_axis_q_out_tdata, m_axis_q_out_tvalid, 
  s_axis_adc_increment_tdata, s_axis_adc_increment_tvalid, 
  s_axis_tune_phase_increment_tdata, s_axis_tune_phase_increment_tvalid)
/* synthesis syn_black_box black_box_pad_pin="aresetn,m_axis_i_out_tdata[15:0],m_axis_i_out_tvalid,m_axis_q_out_tdata[15:0],m_axis_q_out_tvalid,s_axis_adc_increment_tdata[31:0],s_axis_adc_increment_tvalid,s_axis_tune_phase_increment_tdata[31:0],s_axis_tune_phase_increment_tvalid" */
/* synthesis syn_force_seq_prim="aclk" */;
  input aclk /* synthesis syn_isclock = 1 */;
  input aresetn;
  output [15:0]m_axis_i_out_tdata;
  output m_axis_i_out_tvalid;
  output [15:0]m_axis_q_out_tdata;
  output m_axis_q_out_tvalid;
  input [31:0]s_axis_adc_increment_tdata;
  input s_axis_adc_increment_tvalid;
  input [31:0]s_axis_tune_phase_increment_tdata;
  input s_axis_tune_phase_increment_tvalid;
endmodule
