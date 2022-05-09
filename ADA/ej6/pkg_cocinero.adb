with pkg_Sem; use pkg_Sem;
with pkg_raciones; use pkg_raciones;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Task_Identification; use Ada.Task_Identification;

package body Pkg_cocinero is

   task body Tarea_Suceso_Co is

   cont : Natural := 1;
   
   begin

      loop
	    olla_vacia.wait;		
	    Put_Line("Cocinando");
		delay 1.0;
		raciones.restablecerRaciones;
	    Put_Line( "Comida terminada");
	    olla_llena.Signal;

	    end loop;

   end Tarea_Suceso_Co;

end Pkg_cocinero;
