<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bienvenido</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      rel="stylesheet"
    />
    <link rel="icon" href="./img/logo.jpg" />
    <link rel="stylesheet" href="./CSS/style.css" />
  </head>
  <body style="background-color: burlywood">
    <header class="mb-auto"><%@include file="template/menu.jsp"%></header>
    <main>
      <section>
        <h1>
          Bienvenido a este proyecto, soy Joao Urteaga. Este es un CRUD hecho
          con JSP, Bootstrap, JavaScript, HTML y CSS. Puedes agregar, editar o eliminar
          según lo requieras en la página de Asociados.
        </h1>
      </section>
    </main>
    <footer>
      <div class="container">
        <p>&copy; 2024 Derechos de autor: Joao Urteaga Sanchez</p>
        <ul class="d-flex">
          <a
            href="https://mail.google.com/mail/?view=cm&fs=1&to=joaourteaga52@gmail.com"
            target="_blank"
          >
            <i class="fas fa-envelope"></i>
          </a>
          <br />

          <a href="https://github.com/JOAOTIX" target="_blank">
            <i class="fab fa-github"></i>
          </a>

          <a
            href="https://www.linkedin.com/in/joao-urteaga-s%C3%A1nchez-a9989526b"
            target="_blank"
          >
           <i class="fab fa-linkedin"></i>
          </a>
        </ul>
      </div>
    </footer>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
