with Ada.Text_Io;
with pkg_tarea;
with pkg_procedure;
procedure ejercicio2 is
    Num : Integer;
    Tarea1: tarea_t;

begin
    loop
        Tarea1.EstadoConsultas;

        pkg_procedure.Leer_Entero (Num);
        if Num<=0 then
        exit;
        end if;

        Tare1.EsPar(Num);

    end loop;

    abort Tarea1;

end ejercicio2;