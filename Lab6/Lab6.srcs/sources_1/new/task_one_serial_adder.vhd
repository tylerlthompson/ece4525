----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 10/23/2018 10:20:22 AM
-- Design Name: Lab6 Task One
-- Module Name: task_one_serial_adder - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity task_one_serial_adder is
    Port ( CLK, RESET, A, B : in STD_LOGIC;
            SUM, CY : out STD_LOGIC);
end task_one_serial_adder;

architecture Behavioral of task_one_serial_adder is

    type state_type is (s1, s2, s3, s4);
    
    signal present_state, next_state: state_type := s1;

begin

    serial_add: process(present_state, A, B)
    begin
        case present_state is
        when s1 =>
            SUM <= '0';
            CY <= '0';
            
            if ( A = '0' ) then
                if ( B = '0' ) then
                    next_state <= s1;
                elsif ( B = '1' ) then
                    next_state <= s2;
                end if;
            elsif ( A = '1' ) then
                if ( B = '0' ) then
                    next_state <= s2;
                elsif ( B = '1' ) then
                    next_state <= s3;
                end if;
            end if;
            
        when s2 =>
            SUM <= '1';
            CY <= '0';
            
            if ( A = '0' ) then       
                if ( B = '0' ) then   
                    next_state <= s1; 
                elsif ( B = '1' ) then
                    next_state <= s2; 
                end if;               
            elsif ( A = '1' ) then    
                if ( B = '0' ) then   
                    next_state <= s2; 
                elsif ( B = '1' ) then
                    next_state <= s3; 
                end if;               
            end if;                   
            
        when s3 =>
            SUM <= '0';
            CY <= '1';
            
            if ( A = '0' ) then       
                if ( B = '0' ) then   
                    next_state <= s2; 
                elsif ( B = '1' ) then
                    next_state <= s3; 
                end if;               
            elsif ( A = '1' ) then    
                if ( B = '0' ) then   
                    next_state <= s3; 
                elsif ( B = '1' ) then
                    next_state <= s4; 
                end if;               
            end if;                   
            
        when s4 =>
            SUM <= '1';
            CY <= '1';
            
            if ( A = '0' ) then       
                if ( B = '0' ) then   
                    next_state <= s2; 
                elsif ( B = '1' ) then
                    next_state <= s3; 
                end if;               
            elsif ( A = '1' ) then    
                if ( B = '0' ) then   
                    next_state <= s3; 
                elsif ( B = '1' ) then
                    next_state <= s4; 
                end if;               
            end if;                   
            
        when others =>
            SUM <= '0';
            CY <= '0';
            next_state <= s1;
            
        end case;
    end process serial_add;

    clk_process: process(CLK, RESET, next_state)
    begin
        if ( RESET = '1' ) then
            present_state <= s1;
        else
            if (CLK'event and CLK = '1') then
                present_state <= next_state;
            end if;
        end if;      
            
    end process clk_process;
end Behavioral;
