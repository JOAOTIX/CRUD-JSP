# CRUD - Java

## Descripción

Este proyecto es una aplicación que te muestra tus trabajadores con el , codigo del trabajador,nombre, apellido,edad,salario y el area de trabajo además te permite eliminar a cualquiera, editar la infomación y agregar a un nuevo trabajador

## Características

- **Agregar Trabajador**: Los usuarios pueden agregar nuevos usuarios al darle al boton "Agregar"(Cuando esten agregando, los botones "Editar" y "Eliminar" se deshabilitan)
- **Editar Trabajador**: Los usuarios pueden editar la información del usuario al darle al boton "Editar"(Cuando esten editando, los botones "Agregar" y "Eliminar" se deshabilitan)
- **Eliminar Trabajador**: Los usuarios pueden eliminar a cualquier usuario al darle el boton "Eliminar"(Cuando esten eliminado, los botones "Agregar" y "Editar" se deshabilitan)
- **Alertas**: Alertas interactivas que notifican al usuario sobre las acciones realizadas (agregar, editar, eliminar) también las alertas se desaparecen solas despues de 2s.
- **Modal**: Los formularios para ingresar datos y editarlos se muestran en una ventana modal
- **Base de datos**: Los datos de los trabajadores existen en una base de datos local usando el xampp
- **Patron de diseño**: MVC (Modelo-Vista-Controlador) es una arquitectura de software que separa una aplicación en tres componentes principales.

## Tecnologías Utilizadas

- **JSP(Java Server Page)**: Para la lógica y control de la aplicación.
- **Java**: Para el manejo de las clases y la conexion a la base de datos.
- **MySQL**: Para el almacenamiento de datos de los trabajadores y utilizar las funciones de los botones
- **Xampp**: Para el uso de un servidor local, de esta manera podemos trabajar con el JSP
- **Bootstrap**: Para el diseño y estilo de la interfaz de usuario.
- **jQuery**: Para manipulaciones DOM adicionales.
- **Font Awesome**: Para iconos en los botones y enlaces.
- **JavaScript**: Para la desactivación de los botones según el caso y el control de las alertas(Tiempo de desvanecimiento)
- **HTML5 y CSS3**: Para la estructura y el estilo básico de la página.

## Estructura del Proyecto

- `web/index.jsp`: Archivo principal que nos da una pequeña indicacion.
- `web/vistas/asociados.jsp`: Nos muestra la tabla con los usuarios y los botones para realizar las funciones.
- `web/vistas/template/menu.jsp`: Nos muestra nuestra barra de navegación que la añadimos a nuestros archivos `index.jsp` y `asociados.jsp`.
- `web/js/asociados.js`: Nos muestra la logica para la deshabilitación de botones.
- `web/css/style.css`: Archivo de estilos CSS personalizados para nuestro archivo `index.jsp`.
- `web/img/logo.jpg`: Mi logo.
- `src/java/com/conexion/Conexion.java`: Archivo con el cual realizamos la conexion a nuestra base de datos.
- `src/java/com/controlador/AsociadosServlet.java`: Archivo con el cual recibimos la petición y realizamos nuestra logica para ejecutar la acción que nos mande el usuario.
- `src/java/com/Modelo/Asociado.java`: Archivo con el cual definimos nuestra clase, constructor, GETTERS y SETTERS que se usaran en `AsociadoDAO.java`.
- `src/java/com/Modelo/AsociadoDAO.java`: Archivo con el podremos mostrar los usuarios en la base de datos, agregar usuarios nuevos, editar usuarios nuevos y eliminar usuarios que se mostraran en `asociados.jsp`.
-  `database/asociados.sql`: Archivo para generar nuestra tabla trabajadores(La base de datos la puedes llamar como quiera pero asegurate de cambiar los datos en `Conexion.java`)
- `README.md`: Este archivo.

## Instalación y Ejecución

1. **Clonar el repositorio**:
   ```bash
   git clone https://github.com/JOAOTIX/CRUD-JSP.git
   
2. **Crear una base de datos llamada proyectos y generar una tabla trabajadores con `asociados.sql`**:
  Puedes abrir el xampp(Si no lo tienes descarlago en [Xampp](https://www.apachefriends.org/es/download.html)) y crear una base de datos y luego ejecutar el script de sql.

3. **Asegurate de tener el Net beans y el JDK**
  Si no lo tienes descargalo en [Net beans](https://netbeans.apache.org/front/main/index.html) después abre el proyecto.
4. **Asegurate de configurar el Servidor del tomcat**
   Si no lo tienes descargalo en [Tomcat](https://tomcat.apache.org/download-90.cgi) selecciona esta opcion: *64-bit Windows zip (pgp, sha512)* después agreagalo al proyecto.
5. **Ejecuta el archivo `index.jsp`**
   Con esto ya podras ver el proyecto que clonaste y pobrar todas las funcionalidaes.
6. **Asegurarte de tener acceso a Internet**:
  La aplicación requiere acceso a Internet para cargar las bibliotecas externas (jQuery, Bootstrap, Font Awesome).

## Uso
- **Agregar Trabajador:** Haz clic en el botón "Agregar" para ingresar un nuevo usuario rellena los campos y has clic en el boton "Agregar"
- **Editar Trabajador:** Haz clic en el botón "Editar"  para editar la información del usuario y una vez acabes de actualizar los campos haz clic en el boton "Actualizar"
- **Eliminar Trabajador:** Haz clic en el botón "Eliminar Libro" del usario que deses eliminar y luego haz clic en el boton "Eliminar".

## Autor

**Joao Urteaga Sánchez**

- [GitHub](https://github.com/JOAOTIX)
- [LinkedIn](https://www.linkedin.com/in/joao-urteaga-s%C3%A1nchez-a9989526b)
- [Email](mailto:joaourteaga52@gmail.com)

## Licencia

Este proyecto está licenciado bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.

