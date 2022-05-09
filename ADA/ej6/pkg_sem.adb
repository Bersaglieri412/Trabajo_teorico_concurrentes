with Ada.Text_IO; use Ada.Text_IO;
package body Pkg_Sem is

   protected body Sem_T is

      procedure Signal is

      begin
	 Valor_Sem := Valor_Sem + 1;

      end Signal;
      
   Entry Wait when Valor_sem>0 is
      begin
	 Valor_Sem := Valor_Sem - 1;
    
    while Valor_Sem<0 loop
    exit when Valor_Sem>=0;
    end loop;

   end Wait;

   end Sem_T;

end Pkg_Sem;
