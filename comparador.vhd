library ieee;
 
use IEEE.std_logic_1164.all;
 
entity comparador is
port(A: in std_logic_vector(4 downto 0);
alta, baja, normal: out std_logic);  --declaración variables de salida
 
END comparador;
 
architecture intensidad of comparador is 
 
begin
alta <= '1' when (A> "01001" AND A< "01111")else '0'; 
baja <= '1' when (A= "00110" OR A="00111" OR A="10010" OR A="10001")else '0'; 
normal <= '1' when (A="01000" OR A="01001" OR A="01111" OR A="10000")else '0'; 
 
END intensidad; 