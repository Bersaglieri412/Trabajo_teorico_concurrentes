package pkg_cuenta is
   type Cuenta(Cuenta_Saldo: Integer; Cuenta_id: Integer);
   type Cuenta_P is access Cuenta;
   type TState is (LIBRE, OCUPADO);
   protected type Cuenta (Cuenta_Saldo: Integer; Cuenta_id: Integer) is
   	entry ExtraerDinero(Extraccion : Integer; idCliente: Integer);
   	entry IngresarDinero(Ingreso : Integer; idCliente: Integer);
   	entry Transferencia(C2: Cuenta_P; Transferido: Integer; idCliente: Integer);
   	procedure consultaSaldo(idCliente: Integer);
   	procedure consultaId;
   	
   private
	Estado: TState := LIBRE;
	Saldo: Integer :=Cuenta_Saldo;
	id: Integer :=Cuenta_id;
 	
   end Cuenta;
   		
end pkg_cuenta;
