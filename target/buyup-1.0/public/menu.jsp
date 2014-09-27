<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    <div class="col-md-6">
        <ul class="nav nav-pills">
            <c:choose>
                <c:when test="${rol == 'ADMIN'}">
                    <li id="administrador"><a href="<%=request.getContextPath()%>/adm/admin">Administradores</a></li>
                    <li id="campania"><a href="<%=request.getContextPath()%>/campania">Campañas</a></li>
                    <li id="vendedor"><a href="<%=request.getContextPath()%>/adm/vendedor">Vendedores</a></li>
                    </c:when>
                    <c:otherwise>
                    <li id="contacto"><a href="<%=request.getContextPath()%>/contacto">Contactos</a></li>
                    <li id="categoria"><a href="<%=request.getContextPath()%>/categoria">Categorías</a></li>
                    <li id="prospecto"><a href="<%=request.getContextPath()%>/prospecto">Prospectos</a></li>
                    <li id="bitacora"><a href="<%=request.getContextPath()%>/bitacora">Bitacora</a></li>
                    </c:otherwise>    
                </c:choose>
        </ul>
    </div>
    <div class="col-md-6">
        <label style="margin: 10px; float: left;">Bienvenido: <c:out value="${persona}"></c:out></label><label style="margin: 10px; float: right;"><a href="<%=request.getContextPath()%>/logout">Cerrar Sesión &nbsp;&nbsp;<span class="glyphicon glyphicon-off"></span></a></label>
    </div>
</div>
<script type="text/javascript">
    $(function() {
        var hashtag = window.location.pathname;
        console.log(hashtag);
        switch (hashtag) {
            case "<%=request.getContextPath()%>/adm/vendedor":
                
                document.getElementById("vendedor").className += "active";
                break;
            case "<%=request.getContextPath()%>/campania":
                
                document.getElementById("campania").className += "active";
                break;
            case "<%=request.getContextPath()%>/adm/vendedor/create":
                document.getElementById("vendedor").className += "active";
                break;
        }
    });
</script>