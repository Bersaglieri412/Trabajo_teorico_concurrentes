
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Characters.Handling;
package body Pkg_Sem is
Valor_Sem : Integer := 0;

   protected body Sem_T is

      	procedure Signal is
		
      		begin
	 		Valor_Sem := Valor_Sem+1;
			if valor_sem>=0 then
				Put_Line("Como el valor actual del semáforo tras wait: " & Integer'Image(valor_sem) & ", es mayor o igual que cero, se desbloqueará un proceso");
			 end if;

     	 end Signal;
      
     	 entry Wait when Valor_Sem <= 0 is

     		 begin

	 		Valor_Sem := Valor_Sem-1;
			 if valor_sem<0 then
				Put_Line("Como el valor actual del semáforo tras wait: " & Integer'Image(valor_sem) & ", es menor que cero, se bloqueará un proceso");
			 end if;

      	end Wait;

   end Sem_T;



 	procedure Wait(Sem: in out Sem_T) is

  		 begin

     			 Sem.Wait;

   		end Wait;



   	procedure Signal(Sem: in out Sem_T) is

  		 begin

      			Sem.Signal;

   	end Signal;
   

end Pkg_Sem;

