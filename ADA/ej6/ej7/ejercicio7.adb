with Ada.Text_IO; use Ada.Text_IO;
with pkg_cuenta; use pkg_cuenta;
with pkg_cliente; use pkg_cliente;
procedure Ejercicio7 is
	cuenta1: Cuenta_P;
	cuenta2: Cuenta_P;
	cliente1:cliente_P;
	cliente2:cliente_P;
	cliente3:cliente_P;
begin 
	cuenta1:= new Cuenta(150, 01234);
	cuenta2:= new Cuenta(120, 04543);
	
	cliente1:= new Cliente(cuenta1, cuenta2, 1);
	cliente2:= new Cliente(cuenta1, cuenta2, 2);
	cliente3:= new Cliente(cuenta1, cuenta2, 3);
	delay(5.0);
	abort cliente1.all;
	abort cliente2.all;
end Ejercicio7;
