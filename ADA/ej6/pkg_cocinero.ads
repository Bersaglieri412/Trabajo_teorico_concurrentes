with Pkg_Sem; use Pkg_Sem;
with pkg_raciones; use pkg_raciones;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Task_Identification; use Ada.Task_Identification;

package Pkg_cocinero is
   task type Tarea_Suceso_Co(olla_vacia:P_Sem; olla_llena:P_Sem; raciones:accesoNumRaciones);
   type Tarea_Cocinero is access Tarea_Suceso_Co;
end Pkg_cocinero;