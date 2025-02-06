program Cajero;

uses crt;
var 
	clave, clave2, claveNueva: Integer;
	cedula, cedula2: longint;
	saldo, retiro:real;
	opcion: char;
	
BEGIN
	cedula2:=23734821;
	clave2:=1003;
	saldo:=1000.00;
	writeln ('Bienvenidos al cajero automatico');	
	Repeat
		writeln ('Ingrese su cedula');
		readln (cedula);
		writeln ('Ingrese su clave');
		readln (clave);
		
		if (cedula = cedula2) or (clave<>clave2) then
		begin
			writeln ('El usuario o clave es incorrecto, por favor intente nuevamente.');
		end;
	until (cedula=cedula2) and (clave=clave2);
	Repeat
	
		writeln ('2. Realizar Retiro');
		writeln ('3. Cambio de clave');
		writeln ('4. Salir');
		readln(opcion);
		case (opcion) of
			'1':Begin
				writeln ('Su saldo es ',saldo:0:2);	
			end;
			'2':Begin
				writeln ('Por favor, ingrese el saldo a retirar ');
				read (retiro);
				if (retiro<=saldo) then
				begin
					writeln ('Su retiro ha sido exitoso, el saldo actual es ', saldo-retiro:0:2);
				end
				else
				begin
					writeln ('Su saldo es insuficiente');
				end;
			end;
			'3':Begin
				writeln ('Ingrese la nueva clave');
				readln (clavenueva);
				clave2:=clavenueva;
				writeln ('Su clave a sido cambiada exitosamente');
			end;
			'4':Begin
			end
			else 
				writeln ('No ha ingresado una opcion correcta');
		end;
	until (opcion='4');
END.













{ for variableInicial:=1 to variablefinal do
* 
* 	sentencias;
* 
* ==========================
* 
* while (Condicion) do
* 
* 	sentencias;
* 
*============================
* repeat
* 
* 	SENTENCIA;
* 
* until (Condicion);
* 
* 
* 
* 
*}
