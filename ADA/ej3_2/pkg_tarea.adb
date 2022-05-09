with Ada.Text_IO; use Ada.Text_IO;
with Ada.Task_Identification; use Ada.Task_Identification;
with Ada.Real_Time; use Ada.Real_Time;
--with Ada.Calendar; use Ada.Calendar;


package body pkg_tarea is
   task body tarea_periodica_t is
	Periodo:Time_Span := Milliseconds(1000);
	Variable_Entera: Integer:= 0;
	InicioEjecucion: Time;
	begin
		Put_Line("Inicio de la Tarea("&Image(Current_Task)&")");
		delay 1.0;
		loop
			InicioEjecucion:= Clock;
	        	while Clock-InicioEjecucion<=Periodo loop 
				Variable_Entera := Variable_Entera +1;	
	       	end loop;
	        
	        	Put_Line("Tarea("&Image(Current_Task)&"):Variable interna: " & Integer'Image(Variable_Entera));	
	        end loop;
	        Put_Line("Fin de la Tarea("&Image(Current_Task));
   end tarea_periodica_t;
end pkg_tarea;
