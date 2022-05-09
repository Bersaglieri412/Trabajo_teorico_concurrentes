with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Task_Identification; use Ada.Task_Identification;

package body Pkg_Tarea is
   task body Tarea_Periodica_T is

	 n : Integer;
	 TiempoEjecucion : Time_Span := Milliseconds(1000);
	 start : Time;

   begin

      delay 1.0;

	 loop

	    n := 0;
	    start := Clock;

	    while Clock - start < TiempoEjecucion 
			loop

	       			n := n + 1;
	
	    		end loop;
	 
	    Put_Line("Tarea ( "&Image(Current_Task)&" ): Variable interna: "& Integer'Image(n));

	    delay until (start + Milliseconds(2000));

	 end loop;

      end Tarea_Periodica_T;

end Pkg_Tarea;

