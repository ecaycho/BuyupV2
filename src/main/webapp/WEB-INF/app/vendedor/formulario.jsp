<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vendedor</title>
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
                    
                    <!--<div class="titulo-menu col-md-12"><h3>Listado de Vendedores</h3></div>-->
                    <h1 class="page-header">Nuevo Vendedor</h1>

                    <form method="post" action="<%=request.getContextPath()%>/adm/vendedor/save" class="form-horizontal">
                        
                         <input type="hidden" value="${persona.id}" name="id">
                        
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Paterno</label>

                            <div class="col-sm-10">
                                <input type="text" name="paterno" class="form-control" value="${persona.paterno}" >
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Materno</label>

                            <div class="col-sm-10">
                                <input type="text" name="materno" class="form-control" value="${persona.materno}">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Nombres</label>

                            <div class="col-sm-10">
                                <input type="text" name="nombres" class="form-control" value="${persona.nombres}">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Email</label>

                            <div class="col-sm-10">
                                <input type="email" name="email" class="form-control" value="${persona.email}">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-primary">Guardar</button>
                                <a class="btn btn-link" href="<%=request.getContextPath()%>/adm/vendedor"> Cancelar</a>
                            </div>
                        </div>
                    </form>

                </section>
                <!-- CONTENIDO -->
            </div>
        </div>
    </body>
    <%@include file="/public/footer.jsp" %>
</html>
