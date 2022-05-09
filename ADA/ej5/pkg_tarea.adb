with Ada.Text_IO; use Ada.Text_IO;


package body pkg_tarea is
   procedure A is
   begin
   	Put_Line("[TAREA A] Comienzo ejecucion C = 10.0");
   	delay(10.0);
   	Put_Line("[TAREA A] Final ejecucion C = 10.0");
   end A;
   
   procedure B is
   begin
   	Put_Line("[TAREA B] Comienzo ejecucion C = 8.0");
   	delay(8.0);
   	Put_Line("[TAREA B] Final ejecucion C = 8.0");
   end B;
   
   procedure C is
   begin
   	Put_Line("[TAREA C] Comienzo ejecucion C = 5.0");
   	delay(5.0);
   	Put_Line("[TAREA C] Final ejecucion C = 5.0");
   end C;
   
   procedure D is
   begin
   	Put_Line("[TAREA D] Comienzo ejecucion C = 4.0");
   	delay(4.0);
   	Put_Line("[TAREA D] Final ejecucion C = 4.0");
   end D;
   
   procedure E is
   begin
   	Put_Line("[TAREA E] Comienzo ejecucion C = 2.0");
   	delay(2.0);
   	Put_Line("[TAREA E] Final ejecucion C = 2.0");
   end E;
   
end pkg_tarea;
