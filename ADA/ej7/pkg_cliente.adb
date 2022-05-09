with pkg_cuenta; use pkg_cuenta;

package body pkg_cliente is
	Task body cliente is
		begin
			cuenta1.consultaSaldo(idCliente);
			cuenta2.consultaSaldo(idCliente);
			
			cuenta1.IngresarDinero(15, idCliente);
			cuenta2.IngresarDinero(20, idCliente);

			
			cuenta1.ExtraerDinero(100, idCliente);
			cuenta2.ExtraerDinero(200, idCliente);

			
			cuenta1.Transferencia(cuenta2, 20, idCliente);
			
			cuenta1.consultaSaldo(idCliente);
			cuenta2.consultaSaldo(idCliente);

	end cliente;
end pkg_cliente;
