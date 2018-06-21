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

CREATE dbo.EditarPerfilEstudiante(@nombre varchar(50),@apellidoP varchar(50),@apellidoM varchar(50),
	@rut varchar(20),@email varchar(30),@telefono int, @dirEstudiante varchar(50),@habEstudiante varchar(50),@id_carrera int,@id_usuario int)

as
BEGIN 
		if exists (SELECT TOP 1 1 FROM Estudiantes where id_usuario = @id_usuario)
		BEGIN 
			UPDATE Estudiantes SET nombre_estudiante = @nombre, apellido_p = @apellidoP,apellido_a =@apellido_a,
			rut_estudiante = @rut,email_estudiante = @email, fono_estudiante = @telefono, dir_estudiante = @dirEstudiante,
			 hab_estudiante = @habEstudiante, id_carrera =@id_carrera WHERE id_usuario = @id_usuario;

			select 1;
			return 1;
		END

		ELSE{
			select 0;
			return 0;
		}
END

