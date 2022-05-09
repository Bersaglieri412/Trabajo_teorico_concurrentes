with pkg_cuenta; use pkg_cuenta;

package pkg_cliente is
   task type cliente(cuenta1: Cuenta_P; cuenta2: Cuenta_P; idCliente: Integer);
   type cliente_P is access cliente;
end pkg_cliente;
