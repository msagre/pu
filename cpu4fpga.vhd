library ieee;
use iee.std_logic_1164.all;

entity pu is
    port (
        clk       : in  std_logic;
        inst_addr : out std_logic_vector;
        inst_code : in  std_logic_vector;
        data_addr : out std_logic_vector;
        data_in   : in  std_logic_vector;
        data_out  : out std_logic_vector);


end;

architecture def of pu is
    subtype word is std_logic_vector(data_in'range);
    type word_vector is array of (natural range <>) of word;

    signal rsid : std_logic_vector(4 to  8-1);
    signal rdid : std_logic_vector(8 to 12-1);

    signal rs1  : word;
    signal rs2  : word;
    
begin
	
    registerfile_p : process (rsid, rdid, clk)
        variable rf1: word_vector(1 to 16-1);
        variable rf2: word_vector(1 to 16-1);
    begin
        if rising_edge(clk) then
            if rdid /= (rdid'range => '0') then
                rf1(to_integer(unsigned(rd))) := ;
                rf2(to_integer(unsigned(rd))) := ;
            end if;
        end if;
        rs1 <= rf1()
        rf1(to_integer(unsigned(rd))) := ;
        rf2(to_integer(unsigned(rd))) := ;
    end process;

end;
