package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class calculate_005fformula_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>NUML GPA Calculator</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

        
      out.write("\n");
      out.write("        <form action=\"GPAServlet\">\n");
      out.write("            <div>\n");
      out.write("                <select name=\"total_subjects\" id=\"subject_count\">\n");
      out.write("                    <option value=\"1\">1</option>\n");
      out.write("                    <option value=\"2\">2</option>\n");
      out.write("                    <option value=\"3\">3</option>\n");
      out.write("                    <option value=\"4\">4</option>\n");
      out.write("                    <option value=\"5\">5</option>\n");
      out.write("                    <option value=\"6\">6</option>\n");
      out.write("                    <option value=\"7\">7</option>\n");
      out.write("                    <option value=\"8\">8</option>\n");
      out.write("                </select>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                <input name=\"semester\" required value=\"2\" type=\"number\" placeholder=\"semester\"/>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"subject\">\n");
      out.write("                <input type=\"text\" name=\"subject1\" placeholder=\"Subject 1\" required value=\"OOP\" />\n");
      out.write("                <input type=\"number\" name=\"ch1\" placeholder=\"Credit Hour 1\" required />\n");
      out.write("                <input type=\"text\" name=\"marks1\" placeholder=\"Marks 1\"  required value=\"50\" />\n");
      out.write("            </div>\n");
      out.write("            <div class=\"subject\">\n");
      out.write("                <input type=\"text\" name=\"subject2\" placeholder=\"Subject 2\" required value=\"OOP\" />\n");
      out.write("                <input type=\"number\" name=\"ch2\" placeholder=\"Credit Hour 2\" required />\n");
      out.write("                <input type=\"text\" name=\"marks2\" placeholder=\"Marks 4\"  required value=\"50\" />\n");
      out.write("            </div>\n");
      out.write("            <div class=\"subject\">\n");
      out.write("                <input type=\"text\" name=\"subject3\" placeholder=\"Subject 3\" required value=\"OOP\" />\n");
      out.write("                <input type=\"number\" name=\"ch3\" placeholder=\"Credit Hour 3\"  />\n");
      out.write("                <input type=\"text\" name=\"marks3\" placeholder=\"Marks 4\"  required value=\"50\" />\n");
      out.write("            </div>\n");
      out.write("            <div class=\"subject\">\n");
      out.write("                <input type=\"text\" name=\"subject4\" placeholder=\"Subject 4\" required value=\"OOP\" />\n");
      out.write("                <input type=\"number\" name=\"ch4\" placeholder=\"Credit Hour 4\"  />\n");
      out.write("                <input type=\"text\" name=\"marks4\" placeholder=\"Marks 4\"  required value=\"50\" />\n");
      out.write("            </div>\n");
      out.write("            <div class=\"subject\">\n");
      out.write("                <input type=\"text\" name=\"subject5\" placeholder=\"Subject 5\" required value=\"OOP\" />\n");
      out.write("                <input type=\"number\" name=\"ch5\" placeholder=\"Credit Hour 5\"  />\n");
      out.write("                <input type=\"text\" name=\"marks5\" placeholder=\"Marks 5\"  required value=\"50\" />\n");
      out.write("            </div>\n");
      out.write("            <div class=\"subject\">\n");
      out.write("                <input type=\"text\" name=\"subject6\" placeholder=\"Subject 6\" required value=\"OOP\" />\n");
      out.write("                <input type=\"number\" name=\"ch6\" placeholder=\"Credit Hour 6\"  />\n");
      out.write("                <input type=\"text\" name=\"marks6\" placeholder=\"Marks 6\"  required value=\"50\" />\n");
      out.write("            </div>\n");
      out.write("            <div class=\"subject\">\n");
      out.write("                <input type=\"text\" name=\"subject7\" placeholder=\"Subject 7\" required value=\"OOP\" />\n");
      out.write("                <input type=\"number\" name=\"ch7\" placeholder=\"Credit Hour 7\"  />\n");
      out.write("                <input type=\"text\" name=\"marks7\" placeholder=\"Marks 7\"  required value=\"50\" />\n");
      out.write("            </div>\n");
      out.write("            <div class=\"subject\">\n");
      out.write("                <input type=\"text\" name=\"subject8\" placeholder=\"Subject 8\" required value=\"OOP\" />\n");
      out.write("                <input type=\"number\" name=\"ch8\" placeholder=\"Credit Hour 8\"  />\n");
      out.write("                <input type=\"text\" name=\"marks8\" placeholder=\"Marks 8\"  required value=\"50\" />\n");
      out.write("            </div>\n");
      out.write("            <button type=\"submit\">Calculate</button>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
