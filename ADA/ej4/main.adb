with Pkg_Sem; use Pkg_Sem;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   Semaforo: Sem_T;

begin
   
   

   Put_Line("Wait(Sem)");
   Wait(Semaforo);
   New_line;
   Put_Line ("(Ahora pondremos una espera de dos segundos para simular que un proceso accecde a una zona compartida)");
   delay 2.0;
   Put_Line ("Tras los dos segundos de espera procederemos a efectuar un signal para avisar de que el proceso ya ha acabado, desbloqeuando así la zona compartida");
   New_line;
   Put_Line("Signal(Sem)");
   Signal(Semaforo);
   

end Main;
