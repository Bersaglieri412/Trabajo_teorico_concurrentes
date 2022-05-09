with Pkg_Sem; use Pkg_Sem;
with pkg_raciones; use pkg_raciones;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Task_Identification; use Ada.Task_Identification;
with Ada.Numerics.Discrete_Random;

package body Pkg_canival is 

   task body Tarea_Suceso_Ca is
   Random_Duration : Duration;
   type Custom is range 100..500;
   package Rand_Cust is new Ada.Numerics.Discrete_Random(Custom);
   use Rand_Cust;
   Seed : Generator;
   Num  : Custom;
   begin
      loop
      Reset(Seed);
      Num := Random(Seed);
      Random_Duration := Duration(Num) / 1000.0;
      delay (Random_Duration); --Tarda en tener hambre
		Sem.wait;
      if raciones.getNumRaciones =0 then
      Put_Line ("Caníval"&Integer'Image(id)&" tiene hambre");
      olla_vacia.Signal;
      olla_llena.Wait;
		end if;
      raciones.restarRacion;
		sem.Signal;
      end loop;

   end Tarea_Suceso_Ca;

end Pkg_canival;

