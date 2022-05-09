with Ada.Text_IO; use Ada.Text_IO;
with pkg_tarea; use pkg_tarea;

procedure Ejercicio5 is
	Superperiodo:Integer := 100; --El máximo T de las tareas
	PeriodoSecundario: Integer := 25; --El mínimo T de las tareas
	CiclosTotales: Integer := Superperiodo/PeriodoSecundario;
	CicloRecorrido: Integer := 0;
	begin
	Put_Line("Comienzo del ejecutivo cíclico");
	Put_Line("Superperiodo: " & Integer'Image(Superperiodo));
	Put_Line("Periodo Secundario: " & Integer'Image(PeriodoSecundario));
	Put_Line("");
	while CicloRecorrido<CiclosTotales loop 
		Put_Line("Inicio Marco" & Integer'Image(CicloRecorrido));
		case CicloRecorrido is
			when 0 => A; B; C;
			when 1 => A; B; D; E;
			when 2 => A; B; C;
			when 3 => A; B; D;
			when others => Put_Line("Error");
		end case;
			Put_Line("Final Marco" & Integer'Image(CicloRecorrido));
			Put_Line("");
		CicloRecorrido := CicloRecorrido + 1;
	        end loop;
	Put_Line("Final del ejecutivo cíclico");
end Ejercicio5;

