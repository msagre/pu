library ieee;
use iee.std_logic_1164.all;

entity pu is
    port (
        clk     : in  std_logic;
        address : out std_logic_vector);
end;

architecture def of pu is
begin
    process 
