import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/Calculator")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productDescription = request.getParameter("product description");
        float listPrice = Float.parseFloat(request.getParameter("list price"));
        float discountPercent = Float.parseFloat(request.getParameter("discount percent"));
        float discountAmount = listPrice * discountPercent /100;
        PrintWriter writer =response.getWriter();
        writer.println("<html/>");
        writer.println("<h1>productDescription: " +productDescription+"</h1>" );
        writer.println("<h1>listPrice: " +listPrice+"</h1>" );
        writer.println("<h1>discountPercent: " +discountPercent+"</h1>" );
        writer.println("<h1>discountAmount: " +discountAmount+"</h1>" );
        writer.println("</html>");




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
