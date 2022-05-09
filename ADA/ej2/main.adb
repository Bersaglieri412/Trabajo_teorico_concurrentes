with Ada.Text_IO; use Ada.Text_IO;
with Pkg_Tarea; use Pkg_Tarea;
with Pkg_Procedure; use Pkg_Procedure;

procedure Main is
   T: Tarea_T;
   Numero : Integer;
begin

   loop
      T.EstadoConsultas;
      Leer_Entero(Numero);
      if Numero <= 0 or Numero=null then
	 exit;
      else
	 T.EsPar(Numero);
      end if;
   end loop;
   abort T;

end Main;


