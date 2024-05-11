<%-- Make special characters (ù è à) and java coding available --%>
<%@page language="java" contentType="text/html;charset=UTF-8"%>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


<%-- Dobbiamo mostrare i bottoni "visualizza eventi" e compagnia bella solo se c'è l'admin, come si fa? stavo pensando di settare una variabile local storage quando si fa il login in Login.java ma è un po brutto magari tu valerio del futuro ti inventi una magia
<% ProfiloBean profilo = ProfiloDAO.GetProfiloBean(username, scon.getConnection()); %>

${profilo.getNome()}
--%>
<nav class="navbar navbar-expand-lg navbar-light bg-light-subtle">
    <div class="container-fluid">
        <a class="navbar-brand" href="./">TOMTickets</a>
        <button class="navbar-toggler mb-2" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
	    <ul class="nav navbar-nav">
		<li class="nav-item mb-1 mt-1 dropdown d-flex">
                    <a class="me-3 ms-auto dropdown-toggle btn btn-danger text-white" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Eventi</a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown" style="position: absolute; !important;">
                        <li><a class="dropdown-item" href="#">Concerti</a></li>
                        <li><a class="dropdown-item" href="#">Spettacoli teatrali</a></li>
                        <li><a class="dropdown-item" href="#">Eventi sportivi</a></li>
                        <li><a class="dropdown-item" href="#">Visite guidate</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="./eventi">Visualizza tutti</a></li>
                    </ul>
                </li>
                <%
		    String name = (String) session.getAttribute("username");
                    if(name == null){
                %>
                <!--Show something to the not-logged user -->
                <%
                    }else{
                %>
                    <li class="nav-item d-flex"><a class="me-3 mb-1 mt-1 ms-auto btn bg-warning text-white" href="#">Visualizza Utenti</a></li>
                    <li class="nav-item d-flex"><a class="me-3 mb-1 mt-1 ms-auto btn bg-success text-white" href="#">Visualizza Dipendenti</a></li>
                <%
                    }
                %>
                <%
                    if(name == null){
                %>
                    <li class="navbar-item d-flex"><a class="me-3 mb-1 mt-1 ms-auto btn btn-primary navbar-btn" href="./signup">Registrati</a></li>
                    <li class="navbar-item d-flex"><a class="me-3 mb-1 mt-1 ms-auto btn btn-success navbar-btn" href="./login">Accedi</a></li>
                <%
                    }else{
                %>
                    <li class="navbar-item d-flex"><a class="me-3 mb-1 mt-1 ms-auto btn btn-primary navbar-btn" href="./profile">Profilo</a></li>
                    <li class="navbar-item d-flex"><a class="me-3 mb-1 mt-1 ms-auto btn btn-danger navbar-btn" href="./logout">Esci</a></li>
                <%
                    }
                %>
	    </ul>
        </div>
    </div>
</nav>

