library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

 

ENTITY PWM is

    generic( Max: natural := 500000);

    Port ( clk :  in  STD_LOGIC;--reloj de 50MHz

             selector :  in  STD_LOGIC_VECTOR (3 downto 0);--selecciona las 4 posiciones

             PWM :  out  STD_LOGIC);--terminal donde sale la señal de PWM

end PWM;

 

ARCHITECTURE PWM of PWM is

   signal PWM_Count: integer range 1 to Max;--500000;

begin

 

generacion_PWM:

   process( clk, selector,PWM_Count)

                     constant pos1: integer := 50000;  --representa a 1.00ms = 0°
							constant pos2: integer := 55555;  --20
							constant pos3: integer := 61111;  --40 
							constant pos4: integer := 63888;  --50
							constant pos5: integer := 66666;  --60
							constant pos6: integer := 72222;  --80
							constant pos7: integer := 77777;  --100							
							constant pos8: integer := 83333;  --120
							constant pos9: integer := 86111;  --130
							constant pos10: integer := 88888;  --140
							constant pos11: integer :=  94444;  --160
							constant pos12: integer := 100000;  --180						
					
                     
							


          begin

             if rising_edge(clk)then PWM_Count <= PWM_Count + 1;

             end if;

                     case (selector) is

                                 when "0000" =>--con el selector en 00 se posiciona en servo en 0°

                                             if PWM_Count <= pos1 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;

                                 when "0001" =>-- con el selector en 01 se posiciona en servo en 45°

                                             if PWM_Count <= pos2 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;

                                 when "0010" =>-- con el selector en 11 se posiciona en servo en 90°

                                             if PWM_Count <= pos3 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;

                                 when "0011" =>-- con el selector en 10 se posiciona en servo en 180°

                                             if PWM_Count <= pos4 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;
															
											when "0100" =>-- con el selector en 10 se posiciona en servo en 180°

                                             if PWM_Count <= pos5 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;
											when "0101" =>-- con el selector en 10 se posiciona en servo en 180°

                                             if PWM_Count <= pos6 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;
											
											when "0110" =>-- con el selector en 10 se posiciona en servo en 180°

                                             if PWM_Count <= pos7 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;
															
											
											when "0111" =>-- con el selector en 10 se posiciona en servo en 180°

                                             if PWM_Count <= pos8 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;
											
											when "1000" =>-- con el selector en 10 se posiciona en servo en 180°

                                             if PWM_Count <= pos9 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;
											
											
											when "1001" =>-- con el selector en 10 se posiciona en servo en 180°

                                             if PWM_Count <= pos10 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;
											
											when "1010" =>-- con el selector en 10 se posiciona en servo en 180°

                                             if PWM_Count <= pos11 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;
											when "1011" =>-- con el selector en 10 se posiciona en servo en 180°

                                             if PWM_Count <= pos12 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;

			


                                 when others => null;

                     end case;

          end process generacion_PWM;

end PWM;