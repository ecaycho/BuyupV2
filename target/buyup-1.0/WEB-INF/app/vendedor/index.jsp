<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vendedores</title>
        <%@include file="/public/header.jsp" %>
    </head>
    <body>
        <div class="container-fluid col-md-12">
            <%@include file="/public/cabecera.jsp" %>
            
            <!-- menu -->
            <%@include file="/public/menu.jsp" %>
            
            <div class="row">

                <!-- CONTENIDO -->
                <section class="cuerpo col-md-12">

                    <div class="titulo-menu col-md-12"><h3>Listado de Vendedores</h3></div>
                    <div class="submenu-izq col-md-12"><a href="<%=request.getContextPath()%>/adm/vendedor/create" class="btn btn-primary pull-right" >Nuevo</a></div>

                    <table class="table table-hover table-striped">

                        <tr class="bg-info">
                            <th width="40%">Nombres y Apellidos</th>
                            <th width="30%">Email</th>
                            <th width="30%">Estado</th>
                            <th></th>
                        </tr>

                        <c:forEach var="i" items="${vendedores}">
                            <tr>
                                <td><c:out value="${i.persona.nombres} ${i.persona.paterno}"/></td>

                                <td><c:out value="${i.persona.email}"/></td>

                                <td>
                                    <c:if test="${i.estado == 'ACTIVO'}">
                                        <span class="label label-success"> <c:out value="${i.estado}"/> </span>
                                    </c:if>
                                    <c:if test="${i.estado == 'INACTIVO'}">
                                        <span class="label label-danger"> <c:out value="${i.estado}"/> </span>
                                    </c:if>
                                </td>

                                <td>
                                    <div class="btn-group">
                                        <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
                                            <span class="glyphicon glyphicon-cog"></span>
                                        </button>
                                        <ul class="dropdown-menu pull-right" role="menu">
                                            <li><a href="<%=request.getContextPath()%>/adm/vendedor/estado/${i.persona.id}">Activar/Desactivar</a></li>
                                            <li class="divider"></li>
                                            <li><a href="<%=request.getContextPath()%>/adm/vendedor/update/${i.persona.id}">Editar</a></li>
                                            <li><a href="<%=request.getContextPath()%>/adm/vendedor/delete/${i.persona.id}">Eliminar</a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>

                    </table>
                </section>
                <!-- CONTENIDO -->


            </div>
        </div>
        

    </body>

</html>
