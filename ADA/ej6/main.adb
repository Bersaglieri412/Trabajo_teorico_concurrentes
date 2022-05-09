with pkg_Sem; use pkg_Sem;
with Ada.Text_IO; use Ada.Text_IO;
with pkg_canival; use pkg_canival;
with pkg_cocinero; use pkg_cocinero;
with pkg_raciones; use pkg_raciones;

procedure Main is

   Semaforo : P_Sem;
   olla_vacia : P_Sem;
   olla_llena : P_Sem;
   T: Tarea_Canival;
   C: Tarea_Cocinero;
   raciones: accesoNumRaciones;

begin
   Semaforo := new Sem_T(1);
   olla_vacia := new Sem_T(0);
   olla_llena := new Sem_T(0);
   raciones:= new numRaciones(olla_vacia,olla_llena,5);
   C:= new Tarea_Suceso_Co(olla_vacia, olla_llena, raciones);
   T:= new Tarea_Suceso_Ca(Semaforo, olla_vacia, olla_llena, raciones,1);
   T:= new Tarea_Suceso_Ca(Semaforo, olla_vacia, olla_llena, raciones,2);
   T:= new Tarea_Suceso_Ca(Semaforo, olla_vacia, olla_llena, raciones,3);
   T:= new Tarea_Suceso_Ca(Semaforo, olla_vacia, olla_llena, raciones,4);

end Main;
