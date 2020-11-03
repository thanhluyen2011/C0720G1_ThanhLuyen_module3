import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculateDiscountServlet",urlPatterns = "/display-discount")
public class CalculateDiscountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("describe");
        double ListPrice = Float.parseFloat(request.getParameter("price"));
        double DiscountPercent = Float.parseFloat(request.getParameter("ratio"));

        double DiscountAmount = ListPrice * (DiscountPercent * 0.01);
        double DiscountPrice = ListPrice - DiscountAmount;
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>name: " + name+ "</h1>");
        writer.println("<h1>DiscountAmount: " + DiscountAmount+ "</h1>");
        writer.println("<h1>DiscountPrice: " + DiscountPrice+ "</h1>");
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
