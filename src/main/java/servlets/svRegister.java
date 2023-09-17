package servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Contenedor;
import models.Usuario;

import java.io.IOException;

public class svRegister extends HttpServlet {
    public svRegister() {
        super();

    }

    public void init() throws ServletException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

        String nuevoUsuario = request.getParameter("nuevoUsuario");
        String nuevoPassword = request.getParameter("nuevoPassword");

        Usuario usuario = new Usuario(nuevoUsuario, nuevoPassword);

        Contenedor.listaUsuario.add(usuario);

        RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
        rd.forward(request, response);


    }
}
