--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Fri Apr 18 19:07:30 2025
--Host        : tyler-GL702VSK running 64-bit Ubuntu 24.04.2 LTS
--Command     : generate_target lab2_hw_design_wrapper.bd
--Design      : lab2_hw_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab2_hw_design_wrapper is
  port (
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
end lab2_hw_design_wrapper;

architecture STRUCTURE of lab2_hw_design_wrapper is
  component lab2_hw_design is
  port (
    s_axis_adc_increment_tvalid : in STD_LOGIC;
    s_axis_tune_phase_increment_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tune_phase_increment_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_adc_increment_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    m_axis_i_out_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_q_out_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_i_out_tvalid : out STD_LOGIC;
    m_axis_q_out_tvalid : out STD_LOGIC
  );
  end component lab2_hw_design;
begin
lab2_hw_design_i: component lab2_hw_design
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_i_out_tdata(15 downto 0) => m_axis_i_out_tdata(15 downto 0),
      m_axis_i_out_tvalid => m_axis_i_out_tvalid,
      m_axis_q_out_tdata(15 downto 0) => m_axis_q_out_tdata(15 downto 0),
      m_axis_q_out_tvalid => m_axis_q_out_tvalid,
      s_axis_adc_increment_tdata(31 downto 0) => s_axis_adc_increment_tdata(31 downto 0),
      s_axis_adc_increment_tvalid => s_axis_adc_increment_tvalid,
      s_axis_tune_phase_increment_tdata(31 downto 0) => s_axis_tune_phase_increment_tdata(31 downto 0),
      s_axis_tune_phase_increment_tvalid => s_axis_tune_phase_increment_tvalid
    );
end STRUCTURE;
