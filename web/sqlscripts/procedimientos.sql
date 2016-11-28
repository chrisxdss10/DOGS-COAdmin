use doggos;

drop procedure if exists CrearClaveAdmin;
delimiter **
create procedure CrearClaveAdmin()
begin
	declare xIdUs int;
    declare xMsj nvarchar(50);
    declare num int(1);
    declare existe int;
    declare miClave varchar(32);
    
    
    set existe = (select count(*) from Administrador);
    if (existe = 0) then
		set xIdUs = 0;
		insert into Administrador values(0,"master",aes_encrypt("HOLAGUAPO", "ABC123"));
		set xMsj ="Asignando clave";
	else 
		set xMsj = "Clave ya asignada";
		set xIdUs = 0;

	end if;
    set miClave =(SELECT aes_decrypt(Clave,"ABC123") as clave FROM Administrador);
    #if(Clav=miClave) then
		#set num=1;
	#else
		#set num=0;
	#end if;
	select xIdUs as IdUsuario,miClave;	
    
end;
**
delimiter ;

call CrearClaveAdmin();
SELECT aes_decrypt(Clave,"ABC123")  FROM Administrador;
select clave from Administrador;

##########################################################################################

drop procedure if exists addCentro;
delimiter **
create procedure addCentro(in IdC int(2), in NombreC varchar(30), in UsuarioC varchar(30),
in ContraseniaC varchar(30), in DescripcionC blob, in TelefonoC varchar(20), in CorreoC varchar(30),
in CalleC varchar(30), in NumIntC varchar(4), in NumExtC varchar(4), in CpC varchar(5),
in ColoniaC varchar(30), in DelegacionC varchar(30), in EstadoC varchar(30) )
begin
	declare existe int;
	declare msj nvarchar(100);
	declare idusr int;

	set existe = (select count(*) from Centro where NombreCentro = NombreC);

	if (existe = 0) then
		set idusr = (select ifnull(max(IdCentro), 0) + 1 from Centro);
        insert into DireccionCentro(IdDireccion, Calle, NumInt, NumExt, Cp, Colonia, Delegacion, Estado)
        values (idusr, CalleC, NumIntC , NumExtC, CpC, ColoniaC,DelegacionC,EstadoC);
        insert into Centro(IdCentro, NombreCentro, Usuario, Contrasenia, Descripcion, Telefono,Correo, IdDireccion)
		values(idusr,NombreC, UsuarioC, ContraseniaC, DescripcionC,TelefonoC,CorreoC,idusr);
        
		set msj = 'Registro Exitoso';
	else
		set idusr = -1;
        set msj = 'El centro ya existe';
	end if;
	
	select idusr as idusuario, msj;
end; **
delimiter ;



 select * from Centro;
 select * from DireccionCentro;
 call addCentro(0,"Centro2","user1","contra1","Descripcion:blablablabla","5585741962","chris@gmail.com", "Calle1","1","2","54720","Colonia1","Delegacion1","estado1");
 
 #############################################################################
 
 
drop procedure if exists verCentro;
delimiter **
create procedure verCentro()
begin
	declare cuantos int;
    set cuantos=(select count(*) from Centro);
	select IdCentro,NombreCentro,Telefono,Correo,concat_ws(', ', Estado,Delegacion,Colonia,Calle) as Direccion, cuantos from DireccionCentro inner join Centro on Centro.IdDireccion=DireccionCentro.IdDireccion;
end; **
delimiter ;

call verCentro();

##############################################################################

drop procedure if exists BorrarCentro;
delimiter **
create procedure BorrarCentro(in nombre varchar(30))
begin
	declare existe int;
    declare msj varchar(50);
    declare iddef int(2);
    set existe=(select count(*) from Centro where NombreCentro=nombre);
    if(existe=0) then
		set msj= "No existe el centro";
        set iddef=0;
        select iddef,msj;
	else 
		if(existe=1) then
			set msj="Centro Borrado";
            set iddef=(select IdCentro from Centro where NombreCentro= nombre);
            select iddef,msj;
            delete from Centro where IdCentro= iddef;
		end if;
    end if;   
    
end; **
delimiter ;

call BorrarCentro("otrocentro");

 #######################################################################
