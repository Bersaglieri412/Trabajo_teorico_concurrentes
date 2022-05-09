with pkg_Sem; use pkg_Sem;


package pkg_raciones is 

   type numRaciones;
   type accesoNumRaciones is access numRaciones;  

   protected type numRaciones(oV : P_Sem; oL : P_Sem; Num_rac : Integer) is
         entry restablecerRaciones;
         procedure restarRacion;
         function getNumRaciones return Integer;
      private
         num_raciones : Integer := Num_rac;
         olla_vacia : P_Sem := oV;
         olla_llena : P_Sem := oL;
   end numRaciones;

end Pkg_raciones;