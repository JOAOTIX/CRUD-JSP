<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg" style="background-color: #212529;">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                <li class="nav-item">
                    <a style="color: whitesmoke;border-radius: 10px;" class="nav-link active" aria-current="page" 
                       href="${pageContext.servletContext.contextPath}/index.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                    <a   style="color: whitesmoke;border-radius: 10px;"   class="nav-link" 
                       href="${pageContext.servletContext.contextPath}/vistas/asociados.jsp">Asociados</a>
                </li>

            </ul>
        </div>
    </div>
</nav>