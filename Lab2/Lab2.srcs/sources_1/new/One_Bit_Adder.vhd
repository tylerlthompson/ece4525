----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2018 11:43:54 AM
-- Design Name: 
-- Module Name: One_Bit_Adder - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity One_Bit_Adder is
  Port ( 
      input_a, input_b, carry_in: in STD_LOGIC;
      sum, carry_out: out STD_LOGIC
  );
end One_Bit_Adder;

architecture Behavioral of One_Bit_Adder is

begin


end Behavioral;
