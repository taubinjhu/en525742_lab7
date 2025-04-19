-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: tyler_aubin.jhu:aubin_lib:digital_downconverter_36khz_bandwidth:1.0
-- IP Revision: 5

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY digital_downconverter_36khz_bandwidth_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    m_axis_i_out_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_i_out_tvalid : OUT STD_LOGIC;
    m_axis_q_out_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_q_out_tvalid : OUT STD_LOGIC;
    s_axis_adc_increment_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_adc_increment_tvalid : IN STD_LOGIC;
    s_axis_tune_phase_increment_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_tune_phase_increment_tvalid : IN STD_LOGIC
  );
END digital_downconverter_36khz_bandwidth_0;

ARCHITECTURE digital_downconverter_36khz_bandwidth_0_arch OF digital_downconverter_36khz_bandwidth_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF digital_downconverter_36khz_bandwidth_0_arch: ARCHITECTURE IS "yes";
  COMPONENT lab2_hw_design_wrapper IS
    PORT (
      aclk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      m_axis_i_out_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axis_i_out_tvalid : OUT STD_LOGIC;
      m_axis_q_out_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axis_q_out_tvalid : OUT STD_LOGIC;
      s_axis_adc_increment_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_adc_increment_tvalid : IN STD_LOGIC;
      s_axis_tune_phase_increment_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_tune_phase_increment_tvalid : IN STD_LOGIC
    );
  END COMPONENT lab2_hw_design_wrapper;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 125000000, ASSOCIATED_BUSIF m_axis_i_out:m_axis_q_out:s_axis_tune_phase_inc:s_axis_adc_phase_inc, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_i_out_tdata: SIGNAL IS "XIL_INTERFACENAME m_axis_i_out, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_i_out_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_i_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_i_out_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_i_out TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_q_out_tdata: SIGNAL IS "XIL_INTERFACENAME m_axis_q_out, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_q_out_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_q_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_q_out_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_q_out TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_adc_increment_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis_adc_phase_inc, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_adc_increment_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_adc_phase_inc TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_adc_increment_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_adc_phase_inc TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_tune_phase_increment_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis_tune_phase_inc, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tune_phase_increment_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_tune_phase_inc TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tune_phase_increment_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_tune_phase_inc TVALID";
BEGIN
  U0 : lab2_hw_design_wrapper
    PORT MAP (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_i_out_tdata => m_axis_i_out_tdata,
      m_axis_i_out_tvalid => m_axis_i_out_tvalid,
      m_axis_q_out_tdata => m_axis_q_out_tdata,
      m_axis_q_out_tvalid => m_axis_q_out_tvalid,
      s_axis_adc_increment_tdata => s_axis_adc_increment_tdata,
      s_axis_adc_increment_tvalid => s_axis_adc_increment_tvalid,
      s_axis_tune_phase_increment_tdata => s_axis_tune_phase_increment_tdata,
      s_axis_tune_phase_increment_tvalid => s_axis_tune_phase_increment_tvalid
    );
END digital_downconverter_36khz_bandwidth_0_arch;
