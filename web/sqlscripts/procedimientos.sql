use doggos;

drop procedure if exists CrearClaveAdmin;
delimiter **
create procedure CrearClaveAdmin(Clav varchar(20))
begin
	declare xIdUs int;
    declare xMsj nvarchar(50);
    declare num int(1);
    declare existe int;
    declare miClave varchar(32);
    
    
    set existe = (select count(*) from Administrador);
    if (existe = 0) then
		insert into Administrador values(0,"master",md5("Huesit0s"));
		set xMsj ="Asignando clave";
	else 
		set xMsj = "Clave ya asignada";
		set xIdUs = 0;

	end if;
    set miClave= (SELECT md5(Clave) FROM Administrador);
    
    #if(Clav=miClave) then
		#set num=1;
	#else
		#set num=0;
	#end if;
	#select xIdUs as IdUsuario, num,miClave;	
    
end; 
**
delimiter ;




call CrearClaveAdmin("a");


SELECT aes_decrypt(Clave,"ABCD") as clave FROM Administrador;

select * from Administrador;