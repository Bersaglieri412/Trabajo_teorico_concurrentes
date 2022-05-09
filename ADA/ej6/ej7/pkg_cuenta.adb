with Ada.Text_IO; use Ada.Text_IO;
package body pkg_cuenta is
	
	protected body Cuenta is
	procedure consultaSaldo(idCliente: Integer) is
	begin
		Put_Line("El cliente"&Integer'Image(idCliente)&" ha consultado el saldo de la cuenta" & Integer'Image(id) & " que es:" & Integer'Image(Saldo) & "$");
	end consultaSaldo;
        
        procedure ConsultaId is
	begin
		Put(Integer'Image(id));
	end ConsultaId;
        
	entry ExtraerDinero(Extraccion : Integer; idCliente: Integer) when estado=LIBRE is
        begin
	        estado := OCUPADO;
        	if Extraccion <= Saldo then
        	Saldo := Saldo - Extraccion;
        	Put_Line("El cliente"&Integer'Image(idCliente)&" ha solicitado una extraccion. Saldo en la cuenta" & Integer'Image(id) & " tras la extraccion de"& Integer'Image(Extraccion) & "$ es: "& Integer'Image(Saldo) & "$");
        	else
        		Put_Line("El cliente"&Integer'Image(idCliente)&" ha solicitado una extraccion. No tienes suficiente saldo en la cuenta" & Integer'Image(id) & " para la extraccion de"& Integer'Image(Extraccion) & "$");
      		end if;
      		estado := LIBRE;
        end ExtraerDinero;
        
	entry IngresarDinero(Ingreso : Integer; idCliente: Integer) when estado=LIBRE is
        begin
	        estado := OCUPADO;
        	Saldo := Saldo + Ingreso;
        	Put_Line("El cliente"&Integer'Image(idCliente)&" ha solicitado un ingreso. Saldo en la cuenta" & Integer'Image(id) & " tras el ingreso de"& Integer'Image(Ingreso) & "$ es:"& Integer'Image(Saldo)& "$");
        	estado := LIBRE;
        end IngresarDinero;
	
	
	entry Transferencia (C2: Cuenta_P; Transferido: Integer; idCliente: Integer) when estado=LIBRE is
	begin
		if (Saldo >= Transferido) then
		Put("El cliente"&Integer'Image(idCliente)&" ha solicitado una transferencia. Procedemos a la transferencia de la cuenta" &Integer'Image(id)&" a la cuenta");
		C2.ConsultaId;
		Put_Line(" por valor de"&Integer'Image(Transferido)&"$" );
			Saldo := Saldo - Transferido;
			C2.IngresarDinero(Transferido, idCliente);
		end if;
	end Transferencia;


	end Cuenta;
end pkg_cuenta;
