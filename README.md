# Crazy4Cats

Crazy4Cats es una aplicación web diseñada para amantes de los gatos donde los usuarios pueden compartir publicaciones relacionadas con estos adorables felinos. Los usuarios pueden registrarse, iniciar sesión, crear publicaciones, agregar comentarios, dar reacciones a las publicaciones y comentarios, y más. ¡Únete a nuestra comunidad de amantes de los gatos y comparte tu pasión por estos animales!

## Demo 

Puedes ver un demo subido a Heroku [aquí](https://desolate-woodland-61277-bf29f96a4a74.herokuapp.com/).


## Funcionalidades

- **Registro de Usuarios:** Los usuarios pueden registrarse con su nombre, dirección de correo electrónico y contraseña. También pueden cargar una imagen de perfil opcional.

- **Inicio de Sesión:** Los usuarios pueden iniciar sesión en sus cuentas existentes utilizando su dirección de correo electrónico y contraseña.

- **Publicaciones:** Los usuarios registrados pueden crear, ver, editar y eliminar publicaciones. Cada publicación puede contener una imagen.

- **Comentarios:** Los usuarios registrados y no registrados pueden agregar comentarios a las publicaciones y ver los comentarios de otras personas.

- **Reacciones:** Los usuarios registrados pueden dar reacciones (por ejemplo, "Me gusta" o "No me gusta") a las publicaciones y comentarios.

- **Administración de Cuentas:** Los administradores pueden realizar acciones adicionales, como editar y eliminar publicaciones de otros usuarios.


## Instalación

Para clonar y ejecutar esta aplicación en tu máquina local, sigue estos pasos:

1. Clona el repositorio de GitHub:

   ```bash
   git clone https://github.com/kenomun/Crazy4Cats.git

2. Ve al directorio del proyecto:

- cd Crazy4Cats

3. Instala las gemas y dependencias de Ruby:

- bundle install

4. Configura la base de datos y ejecuta las migraciones:

- rails db:migrate

6. crear un usuario admin, y dos usuarios de prueba, crear post de cada usuarios, crear comentarios de usuarios y comentarios anónimos, y reacciones a post y comentarios.

- rails db:seed

6. Abre tu navegador web y visita http://localhost:3000 para acceder a la aplicación.

7. Para la revision test de post se ejecuta en consola:

- rails test

## Requisitos del Sistema

- Ruby 3.1.2 o superior
- Ruby on Rails 7.0.2 o superior
- Postgres (base de datos predeterminada)
- Bundler (para instalar gemas)
