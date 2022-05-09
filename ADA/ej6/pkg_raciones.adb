with Ada.Text_IO; use Ada.Text_IO;
with pkg_Sem; use pkg_Sem;

package body Pkg_raciones is 
    
    protected body numRaciones is

    procedure restarRacion is 
    begin
    num_raciones:=num_raciones-1;
    end restarRacion;

   entry restablecerRaciones when num_raciones=0 is 
    begin
    num_raciones:=5;
   end restablecerRaciones;

   function getNumRaciones return Integer is 
   begin 
   return num_raciones;
   end getNumRaciones;

   end numRaciones;

end Pkg_raciones;