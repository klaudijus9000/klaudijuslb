library ieee;
use ieee.std_logic_1164.all;
 
entity and_gate_tb is
end and_gate_tb;
 
architecture behave of or_gate_tb is
  signal r_SIG1   : std_logic := '0';
  signal r_SIG2   : std_logic := '0';
  signal r_SIG3   : std_logic := '0';
  signal r_SIG4   : std_logic := '0';
  signal w_RESULT : std_logic;
   
  component or_gate is
    port (
      input_1    : in  std_logic;
      input_2    : in  std_logic;
	  input_3    : in  std_logic;
	  input_4    : in  std_logic;
      and_result : out std_logic);
  end component or_gate;
   
begin
   
  and_gate_INST : and_gate
    port map (
      input_1    => r_SIG1,
      input_2    => r_SIG2,
	  input_3    => r_SIG3,
	  input_4    => r_SIG4,
      and_result => w_RESULT
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
	r_SIG3 <= '0';
	r_SIG4 <= '0';
    wait for 10 ns;    
  end process;
     
end behave;