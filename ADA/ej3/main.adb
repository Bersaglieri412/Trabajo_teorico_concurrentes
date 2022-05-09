with Ada.Text_IO; use Ada.Text_IO;
with Pkg_Tarea; use Pkg_Tarea;

procedure Main is

   T1: Tarea_Periodica_T;
   T2: Tarea_Periodica_T;

begin

   delay 8.0;
   abort T1;
   abort T2;
   delay 1.0;

end Main;


