package co.edu.sena.Nomina.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@SuppressWarnings("ALL")
@WebServlet(name = "NominaServlet", value = "/NominaServlet")
public class NominaServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        // DATOS ENVIADOS DESDE EL FORMULARIO
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String documento = request.getParameter("documento");
        int diasTrabajados = Integer.parseInt(request.getParameter("diasTrabajados"));
        int sueldoMensual = Integer.parseInt(request.getParameter("sueldoMensual"));



        // SUELDO TOTAL A PAGAR SEGUN LOS DIAS TRABAJADOS
        int sueldoPorDias = (sueldoMensual/30)*diasTrabajados;
        request.setAttribute("sueldoPorDias", "sueldoPorDias");

        // SUBSIDIO DE TRANSPORTE
        int subsidioTransporte = 0;
        int subsidioTransportePorDias = 0;
        if (sueldoPorDias <= 1817050)
        {
            subsidioTransporte = subsidioTransporte+106454;
            subsidioTransportePorDias = (subsidioTransporte/30)*diasTrabajados;
        }

        // SUELDO TOTAL CON DESCUENTO DE PENSION(4%) Y SALUD(4%)
        int sueldoPagar = sueldoPorDias + subsidioTransportePorDias;

        // PENSION(4%) Y SALUD(4%)
        int descPension = (int) (sueldoPorDias*0.04);
        int descSalud = (int) (sueldoPorDias*0.04);
        int totalDesc = descPension + descSalud;

        // VALOR NETO POR PAGAR
        int valorNeto = sueldoPagar - totalDesc;



        PrintWriter out = response.getWriter();
        out.println("<html lang=\"es-419\"><head><link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\"" +
                " integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\"></head><body>");
            out.println("<header>");
                out.println("<h1>RESULTADOS DE NOMINA:</h1><br>");
            out.println("</header>");

            out.println("<section>");
                out.println("<h3>DATOS PERSONALES</h3>");
                out.println("<p><b>Nombre y Apellidos: </b>" + nombres + apellidos + "</p>");
                out.println("<p><b>Numero de documento: </b>" + documento + "</p>");
                out.println("<p><b>Dias trabajados: </b>" + diasTrabajados + "</p>");
                out.println("<p><b>Sueldo mensual: </b>$" + sueldoMensual + "</p><br>");
            out.println("</section>");

            out.println("<section>");
                out.println("<h3>DEVENGOS</h3>");
                out.println("<p><b>Sueldo a pagar por " + diasTrabajados + " dias trabajados:</b> $" + sueldoPorDias + "</p>");
                out.println("<p><b>Subsidio de transporte por " + diasTrabajados + " dias trabajados:</b> $" + subsidioTransportePorDias + "</p>");
                out.println("<p><b>Subtotal de devengos: </b>$" + sueldoPagar + "</p><br>");
            out.println("</section>");

            out.println("<section>");
                out.println("<h3>DESCUENTOS</h3>");
                out.println("<p><b>Salud: </b>$" + descSalud + "</p>");
                out.println("<p><b>Pension: </b>$" + descPension + "</p>");
                out.println("<p><b>ARL: </b>$0</p>");
                out.println("<p><b>Subtotal de devengos: </b>$" + totalDesc + "</p><br>");
            out.println("</section>");

            out.println("<section>");
                out.println("<p><b>Valor neto a pagar: </b>$" + valorNeto + "</p>");
            out.println("</section>");
        out.println("</body></html>");
    }
}
