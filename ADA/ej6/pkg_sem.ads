with Ada.Text_IO; use Ada.Text_IO;
package Pkg_Sem is
   type Sem_T;
   type P_Sem is access Sem_T;
   protected type Sem_T(Valor_Inicial : Integer ) is
      entry Wait;
      procedure Signal;
   private
      Valor_Sem : Integer := Valor_Inicial;
   end Sem_T;
end Pkg_Sem;
