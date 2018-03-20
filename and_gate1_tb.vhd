library ieee;
use ieee.std_logic_1164.all;
 
entity and_gate_tb is
end and_gate_tb;
 
architecture behave of and_gate_tb is
  signal r_SIG1   : std_logic := '0';
  signal r_SIG2   : std_logic := '0';
  signal r_SIG3   : std_logic := '0';
  signal r_SIG4   : std_logic := '0';
  signal w_RESULT1 : std_logic;
  signal w_RESULT2 : std_logic;
  signal w_RESULT3 : std_logic;

   
  component and_gate is
    port (
      input_1    : in  std_logic;
      input_2    : in  std_logic;
      input_3    : in  std_logic;
      input_4    : in  std_logic;
      and_result1 : out std_logic;
      and_result2 : out std_logic;
      and_result3 : out std_logic
);
  end component and_gate;
   
begin
   
  and_gate_INST : and_gate
    port map (
      input_1    => r_SIG1,
      input_2    => r_SIG2,
      input_3    => r_SIG3,
      input_4    => r_SIG4,
      and_result1 => w_RESULT1,
      and_result2 => w_RESULT2,
      and_result3 => w_RESULT3
      );
 
  process is
  begin
    r_SIG1 <= '0';
    r_SIG2 <= '0';
    r_SIG3 <= '0';
    r_SIG4 <= '0';
    wait for 10 ns;
    r_SIG1 <= '0';
    r_SIG2 <= '1';
    r_SIG3 <= '0';
    r_SIG4 <= '1';
    wait for 10 ns;
    r_SIG1 <= '1';
    r_SIG2 <= '0';
    r_SIG3 <= '1';
    r_SIG4 <= '0';
    wait for 10 ns;
    r_SIG1 <= '1';
    r_SIG2 <= '1';
    r_SIG3 <= '1';
    r_SIG4 <= '1';
    wait for 10 ns;    
  end process;
     
end behave;