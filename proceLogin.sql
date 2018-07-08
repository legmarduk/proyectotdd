ALTER PROCEDURE dbo.LogearUsuario(@usuario varchar(50),@password varchar(50))
as 
BEGIN 
		if exists (SELECT TOP 1 1 FROM Usuarios where nombre_usuario = @usuario)
		BEGIN
				DECLARE @identificador int
				SET @identificador = (SELECT id_usuario FROM Usuarios where nombre_usuario = @usuario);

				if exists (SELECT TOP 1 1 FROM Usuarios where nombre_usuario = @usuario AND key_usuario =@password )
				BEGIN 
					select @identificador
					return @identificador;
				END
				
				ELSE 
				BEGIN 
					select 0
					return 0;
				END
		END
		else
		BEGIN
			select 0
			return 0;
		END
END


EXEC dbo.LogearUsuario "admin", "admin";

/*-------------------------------------------*/
/*---procedimiento para crear cuenta e insertar en la correspondiente tabla estudiante o empresa-----*/

ALTER PROCEDURE dbo.CrearAccesoEstudiante(@usuario varchar(50),@password varchar(50))
as
BEGIN 
	DECLARE @identificador int
	
	if not exists(SELECT TOP 1 1 FROM Usuarios where nombre_usuario = @usuario AND key_usuario = @password)
	BEGIN
			/*inserta la tupla en la tabla Usuario*/
		INSERT INTO Usuarios(nombre_usuario,key_usuario,fecha_registro) VALUES(@usuario,@password,GETDATE());
			/*si se inserta obtengo el id*/
		SET @identificador = (SELECT id_usuario FROM Usuarios where nombre_usuario = @usuario 
			AND key_usuario=@password);
			/*insert en tabla estudiante solo el id espernado los demas datos por form de estudiante*/
		INSERT INTO Estudiantes(id_usuario)VALUES(@identificador);

		select 1;
		return 1;
	END
	
	ELSE
		BEGIN 
			select 0;
			return 0;
		END

END

EXEC dbo.CrearAccesoEstudiante 'ian','547806'

SELECT * FROM Usuarios


SELECT * FROM Estudiantes


/*--------------------------------------------*/

CREATE PROCEDURE dbo.EditarPerfilEstudiante(@nombre varchar(50),@apellidoP varchar(50),@apellidoM varchar(50),
	@rut varchar(20),@email varchar(30),@telefono int, @dirEstudiante varchar(50),@habEstudiante varchar(50),
	@id_carrera int,@id_usuario int)

as
BEGIN 
		if exists (SELECT TOP 1 1 FROM Estudiantes where id_usuario = @id_usuario)
		BEGIN 
			UPDATE Estudiantes SET nombre_estudiante = @nombre, apellido_p = @apellidoP,apellido_a =@apellidoM,
			rut_estudiante = @rut,email_estudiante = @email, fono_estudiante = @telefono, dir_estudiante = @dirEstudiante,
			hab_estudiante = @habEstudiante, id_carrera = @id_carrera WHERE id_usuario = @id_usuario;


			select 1;
			return 1;
		END

		ELSE
			BEGIN
				select 0;
				return 0;
			END
END
/*------------ obtener datos del estudiante-------*/

create procedure dbo.listar_usuario(@id_usuario int)
as
begin
	if exists (SELECT TOP 1 1 FROM Estudiantes where id_usuario = @id_usuario)
	begin
		select nombre_estudiante, apellido_p, apellido_a, rut_estudiante, email_estudiante, fono_estudiante, dir_estudiante, hab_estudiante, id_carrera
		from Estudiantes where @id_usuario = id_usuario
	end
end

CREATE PROCEDURE dbo.listar_usuario(@id_usuario int)
as
BEGIN 
	DECLARE @DatosUsuario String(max)
	/*if exists (SELECT TOP 1 1 FROM Estudiantes where id_usuario = @id_usuario)
	BEGIN*/

		SET @DatosUsuario = (SELECT nombre_estudiante,apellido_p, apellido_a, rut_estudiante,email_estudiante,fono_estudiante,
			dir_estudiante,hab_estudiante,id_carrera FROM Estudiantes where id_usuario = @id_usuario);


		SELECT @DatosUsuario;
		return @DatosUsuario;
	/*END*/

END



/******* POSTULACION *******/
INSERT INTO Usuarios (nombre_usuario,key_usuario,fecha_registro) VALUES('empresaprueba','123',GETDATE())

select * from Empresas

INSERT INTO Empresas(nombre_empresa,fono_empresa,dir_empresa,mail_empresa,rubro_empresa,desc_empresa,
id_usuario) Values('EmpresaPrueba',5684351,'dirEmpresa 1111 thno','empresa@empresa.cl','informatica',
'empresa que trabaja en proyectos web',10)

INSERT INTO Publicaciones(titulo_publicacion,desc_publicacion,pago,requerimientos,horas,compatibilidad,
fecha_publicacion,id_empresa) VALUES('Practica Informatica','necesitamos gente que quiera trabajar 
en desarrollo etc',60.000,'Java',260,1,GETDATE(),1)

SELECT * FROM Publicaciones


/*procedimiento de la postulacion */

ALTER PROCEDURE dbo.PostulacionPractica(@id_usuario int, @id_publicacion int)
as
BEGIN 	
/*procedimiento se hace con la id del estudiante*/
/*con id_publicacion podemos tener id_empresa y todos los datos*/
		DECLARE @id_estudiante int

		SET @id_estudiante = (SELECT id_estudiante FROM Estudiantes  WHERE id_usuario = @id_usuario);

		if exists (SELECT TOP 1 1 FROM Postulaciones where id_estudiante = @id_estudiante 
			AND id_publicacion = @id_publicacion)
		BEGIN
			SELeCT 0;
 			return 0;  /*ya postulo a la publicacion*/
		END

		INSERT INTO Postulaciones(fecha_postulacion, id_estado, id_publicacion,id_estudiante) VALUES 
		(GETDATE(),1,@id_publicacion,@id_estudiante);
		
			SELECT 1;
			return 1; /*es 1 es para ver que si se postulo*/
END

EXEC dbo.PostulacionPractica 9,1
SELECT * FROM Postulaciones
DELETE FROM Postulaciones where id_postulacion = 3

/**************/
ALTER PROCEDURE dbo.TipoCuenta (@id int)
AS
BEGIN 
	
	if exists(SELECT TOP 1 1 FROM Estudiantes where id_usuario=@id)
	BEGIN

		select 1;
		return 1;
	END
	
	select 2;
	return 2;
	
END