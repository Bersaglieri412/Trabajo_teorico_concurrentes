with pkg_Sem; use pkg_Sem;
with pkg_raciones; use pkg_raciones;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Task_Identification; use Ada.Task_Identification;

package pkg_canival is 
   task type Tarea_Suceso_Ca(Sem : P_sem; olla_vacia :P_Sem; olla_llena:P_Sem; raciones:accesoNumRaciones; id: Integer);
   type Tarea_Canival is access Tarea_Suceso_Ca;
end pkg_canival;
