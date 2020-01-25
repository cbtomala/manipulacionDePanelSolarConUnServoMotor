library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity contador24seg is
    PORT (
        clk    : IN  STD_LOGIC;
		  start  : IN  STD_LOGIC;
        areset : IN  STD_LOGIC;
        aload  : IN  STD_LOGIC;
        data   : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
        cnt_out: OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
end contador24seg;
 
architecture solution of contador24seg is
    -- Señal temporal para el contador.
    signal cnt_tmp: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";
begin
    proceso_contador: process (aload, areset, clk, data, start) begin
        if areset = '1' AND start = '1' then
            cnt_tmp <= "00000";
        elsif aload = '1' then
            cnt_tmp <= data;
        elsif rising_edge(clk)  then
		  
            if cnt_tmp = "10111" then
                cnt_tmp <= "00000";
            else
                cnt_tmp <= cnt_tmp + 1;
            end if;
        end if;
    end process;
 
    cnt_out <= cnt_tmp;
end solution;