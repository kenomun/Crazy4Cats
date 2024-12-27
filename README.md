# Crazy4Cats

Crazy4Cats es una aplicación web diseñada para amantes de los gatos donde los usuarios pueden compartir publicaciones relacionadas con estos adorables felinos. Los usuarios pueden registrarse, iniciar sesión, crear publicaciones, agregar comentarios, dar reacciones a las publicaciones y comentarios, y más. ¡Únete a nuestra comunidad de amantes de los gatos y comparte tu pasión por estos animales!


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
en el archivo congif/locales/database.yml se debe asignar su usuario y su contraseña de postgres asi como el puerto en que este esta en ejecucion en su sistema.

- rails db:create
- rails db:migrate

6. crear un usuario admin, y dos usuarios de prueba, crear post de cada usuarios, crear comentarios de usuarios y comentarios anónimos, y reacciones a post y comentarios.

ir al archivo db/migrate/seeds.rb y descomentar todas las lineas (algunas quedaran comentadas de igual forma ya que trabajan a modod de titulo para mayor claridad)
- ejecutar en la temrinal el comando " rails db:seed "

6. Abre tu navegador web y visita http://localhost:3000 para acceder a la aplicación.

podra crear un usuario o usar algun usuario creado por defecto en el paso anterior:

Admin_user: email: admin@example.com, password: 123456
User 1: email: user1@example.com, password: 123456
User 2 email: user2@example.com, password: 123456

7. Para la revision test de post se ejecuta en consola:

- crear base de datos de pruebas ejecutando en la temrinal " rails db:create RAILS_ENV=test "
- correr migraciones en entorno de pruebas ejecutando en la temrinal " rails db:migrate RAILS_ENV=test "
- correr las pruebas ejecutando en la temrinal " rails test "

## Requisitos del Sistema

- Ruby 3.1.2 o superior
- Ruby on Rails 7.0.2 o superior
- Postgres (base de datos predeterminada)
- Bundler (para instalar gemas)
