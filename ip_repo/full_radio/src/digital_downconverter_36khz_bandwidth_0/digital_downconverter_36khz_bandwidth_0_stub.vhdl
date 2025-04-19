-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Sat Apr 19 14:30:58 2025
-- Host        : tyler-GL702VSK running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tyler/EN525742/lab7_take3/radio_periph_lab/ip_repo/full_radio/src/digital_downconverter_36khz_bandwidth_0/digital_downconverter_36khz_bandwidth_0_stub.vhdl
-- Design      : digital_downconverter_36khz_bandwidth_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity digital_downconverter_36khz_bandwidth_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_i_out_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_i_out_tvalid : out STD_LOGIC;
    m_axis_q_out_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_q_out_tvalid : out STD_LOGIC;
    s_axis_adc_increment_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_adc_increment_tvalid : in STD_LOGIC;
    s_axis_tune_phase_increment_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tune_phase_increment_tvalid : in STD_LOGIC
  );

end digital_downconverter_36khz_bandwidth_0;

architecture stub of digital_downconverter_36khz_bandwidth_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,m_axis_i_out_tdata[15:0],m_axis_i_out_tvalid,m_axis_q_out_tdata[15:0],m_axis_q_out_tvalid,s_axis_adc_increment_tdata[31:0],s_axis_adc_increment_tvalid,s_axis_tune_phase_increment_tdata[31:0],s_axis_tune_phase_increment_tvalid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "lab2_hw_design_wrapper,Vivado 2023.2";
begin
end;
