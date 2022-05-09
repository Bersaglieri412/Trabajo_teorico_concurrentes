with Ada.Text_IO; use Ada.Text_IO;
with pkg_tarea; use pkg_tarea;
procedure ejercicio3 is
        Tarea1:tarea_periodica_t;
        Tarea2:tarea_periodica_t;
        begin
       	Put_Line("INICIO DEL MAIN");
       	delay 8.0;
		abort Tarea1;
		abort Tarea2;
		delay 2.0;
		Put_Line("FINAL MAIN");
	
end ejercicio3;

