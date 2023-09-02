-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:cic_compiler:4.0
-- IP Revision: 16

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY cic_compiler_v4_0_16;
USE cic_compiler_v4_0_16.cic_compiler_v4_0_16;

ENTITY pdm_to_pcm_cic_compiler IS
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC
  );
END pdm_to_pcm_cic_compiler;

ARCHITECTURE pdm_to_pcm_cic_compiler_arch OF pdm_to_pcm_cic_compiler IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF pdm_to_pcm_cic_compiler_arch: ARCHITECTURE IS "yes";
  COMPONENT cic_compiler_v4_0_16 IS
    GENERIC (
      C_COMPONENT_NAME : STRING;
      C_FILTER_TYPE : INTEGER;
      C_NUM_STAGES : INTEGER;
      C_DIFF_DELAY : INTEGER;
      C_RATE : INTEGER;
      C_INPUT_WIDTH : INTEGER;
      C_OUTPUT_WIDTH : INTEGER;
      C_USE_DSP : INTEGER;
      C_HAS_ROUNDING : INTEGER;
      C_NUM_CHANNELS : INTEGER;
      C_RATE_TYPE : INTEGER;
      C_MIN_RATE : INTEGER;
      C_MAX_RATE : INTEGER;
      C_SAMPLE_FREQ : INTEGER;
      C_CLK_FREQ : INTEGER;
      C_USE_STREAMING_INTERFACE : INTEGER;
      C_FAMILY : STRING;
      C_XDEVICEFAMILY : STRING;
      C_C1 : INTEGER;
      C_C2 : INTEGER;
      C_C3 : INTEGER;
      C_C4 : INTEGER;
      C_C5 : INTEGER;
      C_C6 : INTEGER;
      C_I1 : INTEGER;
      C_I2 : INTEGER;
      C_I3 : INTEGER;
      C_I4 : INTEGER;
      C_I5 : INTEGER;
      C_I6 : INTEGER;
      C_S_AXIS_CONFIG_TDATA_WIDTH : INTEGER;
      C_S_AXIS_DATA_TDATA_WIDTH : INTEGER;
      C_M_AXIS_DATA_TDATA_WIDTH : INTEGER;
      C_M_AXIS_DATA_TUSER_WIDTH : INTEGER;
      C_HAS_DOUT_TREADY : INTEGER;
      C_HAS_ACLKEN : INTEGER;
      C_HAS_ARESETN : INTEGER
    );
    PORT (
      aclk : IN STD_LOGIC;
      aclken : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      s_axis_config_tdata : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axis_config_tvalid : IN STD_LOGIC;
      s_axis_config_tready : OUT STD_LOGIC;
      s_axis_data_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axis_data_tvalid : IN STD_LOGIC;
      s_axis_data_tready : OUT STD_LOGIC;
      s_axis_data_tlast : IN STD_LOGIC;
      m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axis_data_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_data_tvalid : OUT STD_LOGIC;
      m_axis_data_tready : IN STD_LOGIC;
      m_axis_data_tlast : OUT STD_LOGIC;
      event_tlast_unexpected : OUT STD_LOGIC;
      event_tlast_missing : OUT STD_LOGIC;
      event_halted : OUT STD_LOGIC
    );
  END COMPONENT cic_compiler_v4_0_16;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk_intf CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_data_tdata: SIGNAL IS "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_data_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_data_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_data_tdata: SIGNAL IS "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_data_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_data_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_data_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID";
BEGIN
  U0 : cic_compiler_v4_0_16
    GENERIC MAP (
      C_COMPONENT_NAME => "pdm_to_pcm_cic_compiler",
      C_FILTER_TYPE => 1,
      C_NUM_STAGES => 5,
      C_DIFF_DELAY => 1,
      C_RATE => 50,
      C_INPUT_WIDTH => 2,
      C_OUTPUT_WIDTH => 16,
      C_USE_DSP => 1,
      C_HAS_ROUNDING => 0,
      C_NUM_CHANNELS => 1,
      C_RATE_TYPE => 0,
      C_MIN_RATE => 50,
      C_MAX_RATE => 50,
      C_SAMPLE_FREQ => 1,
      C_CLK_FREQ => 41,
      C_USE_STREAMING_INTERFACE => 1,
      C_FAMILY => "zynq",
      C_XDEVICEFAMILY => "zynq",
      C_C1 => 22,
      C_C2 => 21,
      C_C3 => 20,
      C_C4 => 19,
      C_C5 => 19,
      C_C6 => 0,
      C_I1 => 31,
      C_I2 => 31,
      C_I3 => 31,
      C_I4 => 28,
      C_I5 => 24,
      C_I6 => 0,
      C_S_AXIS_CONFIG_TDATA_WIDTH => 1,
      C_S_AXIS_DATA_TDATA_WIDTH => 8,
      C_M_AXIS_DATA_TDATA_WIDTH => 16,
      C_M_AXIS_DATA_TUSER_WIDTH => 1,
      C_HAS_DOUT_TREADY => 0,
      C_HAS_ACLKEN => 0,
      C_HAS_ARESETN => 0
    )
    PORT MAP (
      aclk => aclk,
      aclken => '1',
      aresetn => '1',
      s_axis_config_tdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      s_axis_config_tvalid => '0',
      s_axis_data_tdata => s_axis_data_tdata,
      s_axis_data_tvalid => s_axis_data_tvalid,
      s_axis_data_tready => s_axis_data_tready,
      s_axis_data_tlast => '0',
      m_axis_data_tdata => m_axis_data_tdata,
      m_axis_data_tvalid => m_axis_data_tvalid,
      m_axis_data_tready => '0'
    );
END pdm_to_pcm_cic_compiler_arch;
