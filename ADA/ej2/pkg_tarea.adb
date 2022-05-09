with Ada.Text_IO; use Ada.Text_IO;

package body Pkg_Tarea is
   task body Tarea_T is
      Par : Natural := 0;
      Impar : Natural := 0;
   begin
      loop
	 select
	    accept EsPar(N: Integer) do
	       if N mod 2 = 0 then
		  Put_Line("El numero " & N'Img & " es par");
		  Par := Par + 1;
	       else
		  Put_Line("El numero " & N'Img & " es impar");
		  Impar := Impar + 1;
	       end if;
	    end EsPar;
	 or
	    accept EstadoConsultas do
	       Put_Line("El numero de numeros pares consultados es: " & Par'Img);
	       Put_Line("El numero de numeros impares consultados es: " & Impar'Img);
	    end EstadoConsultas;
	 end select;
      end loop;
   end Tarea_T;
end Pkg_Tarea;