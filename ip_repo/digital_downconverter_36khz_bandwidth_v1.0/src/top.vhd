----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2025 09:53:51 AM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY top IS
  PORT (
    sysclk : IN STD_LOGIC;
    reset : IN STD_LOGIC;


    
    -- Control signals
    audio_input_switch : IN STD_LOGIC
  );
END top;

ARCHITECTURE Behavioral OF top IS
  SIGNAL lut_count : unsigned(2 DOWNTO 0);
  SIGNAL resetn, latched_data : STD_LOGIC;
  SIGNAL data_word : STD_LOGIC_VECTOR(31 DOWNTO 0);

  component lab2_hw_design is
  port (
    adc_increment_valid : in STD_LOGIC;
    tune_phase_increment_valid : in STD_LOGIC;
    dds_resetn : in STD_LOGIC;
    tune_phase_increment : in STD_LOGIC_VECTOR ( 31 downto 0 );
    adc_increment : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_125mhz : in STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    q_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_out_valid : out STD_LOGIC;
    q_out_valid : out STD_LOGIC
  );
  end component lab2_hw_design;


BEGIN
  -- Instantiate HW design
  lab2_hw_design_i : COMPONENT lab2_hw_design_wrapper
    PORT MAP(
    adc_increment_valid : in STD_LOGIC;
    tune_phase_increment_valid : in STD_LOGIC;
    dds_resetn : in STD_LOGIC;
    tune_phase_increment : in STD_LOGIC_VECTOR ( 31 downto 0 );
    adc_increment : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_125mhz : in STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    q_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_out_valid : out STD_LOGIC;
    q_out_valid : out STD_LOGIC
    );
);
  END Behavioral;