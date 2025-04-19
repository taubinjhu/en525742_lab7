--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Fri Apr 18 19:07:30 2025
--Host        : tyler-GL702VSK running 64-bit Ubuntu 24.04.2 LTS
--Command     : generate_target lab2_hw_design.bd
--Design      : lab2_hw_design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab2_hw_design is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of lab2_hw_design : entity is "lab2_hw_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=lab2_hw_design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=5,da_board_cnt=4,da_clkrst_cnt=6,da_ps7_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of lab2_hw_design : entity is "lab2_hw_design.hwdef";
end lab2_hw_design;

architecture STRUCTURE of lab2_hw_design is
  component lab2_hw_design_dds_compiler_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component lab2_hw_design_dds_compiler_0_1;
  component lab2_hw_design_fir_compiler_0_0 is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  end component lab2_hw_design_fir_compiler_0_0;
  component lab2_hw_design_fir_compiler_0_1 is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component lab2_hw_design_fir_compiler_0_1;
  component lab2_hw_design_xlslice_1_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component lab2_hw_design_xlslice_1_1;
  component lab2_hw_design_cmpy_0_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component lab2_hw_design_cmpy_0_0;
  component lab2_hw_design_dds_compiler_0_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component lab2_hw_design_dds_compiler_0_2;
  component lab2_hw_design_fir_first_stage_0 is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  end component lab2_hw_design_fir_first_stage_0;
  component lab2_hw_design_fir_second_stage_0 is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component lab2_hw_design_fir_second_stage_0;
  component lab2_hw_design_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component lab2_hw_design_xlslice_0_2;
  component lab2_hw_design_xlslice_0_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component lab2_hw_design_xlslice_0_3;
  component lab2_hw_design_xlslice_1_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component lab2_hw_design_xlslice_1_2;
  signal adc_increment_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dds_fake_adc_m_axis_data_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dds_fake_adc_m_axis_data_tvalid : STD_LOGIC;
  signal dds_tuner_m_axis_data_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dds_tuner_m_axis_data_tvalid : STD_LOGIC;
  signal fir_first_stage_m_axis_data_tdata : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal fir_first_stage_m_axis_data_tvalid : STD_LOGIC;
  signal fir_i_second_stage_m_axis_data_tvalid : STD_LOGIC;
  signal fir_q_first_stage_m_axis_data_tdata : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal fir_q_first_stage_m_axis_data_tvalid : STD_LOGIC;
  signal fir_q_second_stage_m_axis_data_tdata : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal fir_q_second_stage_m_axis_data_tvalid : STD_LOGIC;
  signal fir_q_second_stage_s_axis_data_tready : STD_LOGIC;
  signal fir_second_stage_m_axis_data_tdata : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal fir_second_stage_s_axis_data_tready : STD_LOGIC;
  signal i_filtered_slice_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal i_slice_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mixer_m_axis_dout_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mixer_m_axis_dout_tvalid : STD_LOGIC;
  signal nco_frequency_valid_1 : STD_LOGIC;
  signal q_filtered_slice_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal q_slice_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sys_clock_1 : STD_LOGIC;
  signal tune_frequency_valid_1 : STD_LOGIC;
  signal tune_phase_increment_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal util_vector_logic_0_Res : STD_LOGIC;
  signal NLW_fir_i_first_stage_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_q_first_stage_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
begin
  adc_increment_1(31 downto 0) <= s_axis_adc_increment_tdata(31 downto 0);
  m_axis_i_out_tdata(15 downto 0) <= i_filtered_slice_Dout(15 downto 0);
  m_axis_i_out_tvalid <= fir_i_second_stage_m_axis_data_tvalid;
  m_axis_q_out_tdata(15 downto 0) <= q_filtered_slice_Dout(15 downto 0);
  m_axis_q_out_tvalid <= fir_q_second_stage_m_axis_data_tvalid;
  nco_frequency_valid_1 <= s_axis_adc_increment_tvalid;
  sys_clock_1 <= aclk;
  tune_frequency_valid_1 <= s_axis_tune_phase_increment_tvalid;
  tune_phase_increment_1(31 downto 0) <= s_axis_tune_phase_increment_tdata(31 downto 0);
  util_vector_logic_0_Res <= aresetn;
dds_fake_adc: component lab2_hw_design_dds_compiler_0_1
     port map (
      aclk => sys_clock_1,
      aresetn => util_vector_logic_0_Res,
      m_axis_data_tdata(15 downto 0) => dds_fake_adc_m_axis_data_tdata(15 downto 0),
      m_axis_data_tvalid => dds_fake_adc_m_axis_data_tvalid,
      s_axis_config_tdata(31 downto 0) => adc_increment_1(31 downto 0),
      s_axis_config_tvalid => nco_frequency_valid_1
    );
dds_tuner: component lab2_hw_design_dds_compiler_0_2
     port map (
      aclk => sys_clock_1,
      aresetn => util_vector_logic_0_Res,
      m_axis_data_tdata(31 downto 0) => dds_tuner_m_axis_data_tdata(31 downto 0),
      m_axis_data_tvalid => dds_tuner_m_axis_data_tvalid,
      s_axis_config_tdata(31 downto 0) => tune_phase_increment_1(31 downto 0),
      s_axis_config_tvalid => tune_frequency_valid_1
    );
fir_i_first_stage: component lab2_hw_design_fir_compiler_0_0
     port map (
      aclk => sys_clock_1,
      aresetn => util_vector_logic_0_Res,
      m_axis_data_tdata(39 downto 0) => fir_first_stage_m_axis_data_tdata(39 downto 0),
      m_axis_data_tready => fir_second_stage_s_axis_data_tready,
      m_axis_data_tvalid => fir_first_stage_m_axis_data_tvalid,
      s_axis_data_tdata(15 downto 0) => i_slice_Dout(15 downto 0),
      s_axis_data_tready => NLW_fir_i_first_stage_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mixer_m_axis_dout_tvalid
    );
fir_i_second_stage: component lab2_hw_design_fir_compiler_0_1
     port map (
      aclk => sys_clock_1,
      aresetn => util_vector_logic_0_Res,
      m_axis_data_tdata(63 downto 0) => fir_second_stage_m_axis_data_tdata(63 downto 0),
      m_axis_data_tvalid => fir_i_second_stage_m_axis_data_tvalid,
      s_axis_data_tdata(39 downto 0) => fir_first_stage_m_axis_data_tdata(39 downto 0),
      s_axis_data_tready => fir_second_stage_s_axis_data_tready,
      s_axis_data_tvalid => fir_first_stage_m_axis_data_tvalid
    );
fir_q_first_stage: component lab2_hw_design_fir_first_stage_0
     port map (
      aclk => sys_clock_1,
      aresetn => util_vector_logic_0_Res,
      m_axis_data_tdata(39 downto 0) => fir_q_first_stage_m_axis_data_tdata(39 downto 0),
      m_axis_data_tready => fir_q_second_stage_s_axis_data_tready,
      m_axis_data_tvalid => fir_q_first_stage_m_axis_data_tvalid,
      s_axis_data_tdata(15 downto 0) => q_slice_Dout(15 downto 0),
      s_axis_data_tready => NLW_fir_q_first_stage_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mixer_m_axis_dout_tvalid
    );
fir_q_second_stage: component lab2_hw_design_fir_second_stage_0
     port map (
      aclk => sys_clock_1,
      aresetn => util_vector_logic_0_Res,
      m_axis_data_tdata(63 downto 0) => fir_q_second_stage_m_axis_data_tdata(63 downto 0),
      m_axis_data_tvalid => fir_q_second_stage_m_axis_data_tvalid,
      s_axis_data_tdata(39 downto 0) => fir_q_first_stage_m_axis_data_tdata(39 downto 0),
      s_axis_data_tready => fir_q_second_stage_s_axis_data_tready,
      s_axis_data_tvalid => fir_q_first_stage_m_axis_data_tvalid
    );
i_filtered_slice: component lab2_hw_design_xlslice_1_1
     port map (
      Din(63 downto 0) => fir_second_stage_m_axis_data_tdata(63 downto 0),
      Dout(15 downto 0) => i_filtered_slice_Dout(15 downto 0)
    );
i_slice: component lab2_hw_design_xlslice_0_3
     port map (
      Din(31 downto 0) => mixer_m_axis_dout_tdata(31 downto 0),
      Dout(15 downto 0) => i_slice_Dout(15 downto 0)
    );
mixer: component lab2_hw_design_cmpy_0_0
     port map (
      aclk => sys_clock_1,
      m_axis_dout_tdata(31 downto 0) => mixer_m_axis_dout_tdata(31 downto 0),
      m_axis_dout_tvalid => mixer_m_axis_dout_tvalid,
      s_axis_a_tdata(31 downto 16) => B"0000000000000000",
      s_axis_a_tdata(15 downto 0) => dds_fake_adc_m_axis_data_tdata(15 downto 0),
      s_axis_a_tvalid => dds_fake_adc_m_axis_data_tvalid,
      s_axis_b_tdata(31 downto 0) => dds_tuner_m_axis_data_tdata(31 downto 0),
      s_axis_b_tvalid => dds_tuner_m_axis_data_tvalid
    );
q_filtered_slice: component lab2_hw_design_xlslice_1_2
     port map (
      Din(63 downto 0) => fir_q_second_stage_m_axis_data_tdata(63 downto 0),
      Dout(15 downto 0) => q_filtered_slice_Dout(15 downto 0)
    );
q_slice: component lab2_hw_design_xlslice_0_2
     port map (
      Din(31 downto 0) => mixer_m_axis_dout_tdata(31 downto 0),
      Dout(15 downto 0) => q_slice_Dout(15 downto 0)
    );
end STRUCTURE;
