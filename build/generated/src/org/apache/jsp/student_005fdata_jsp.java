package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.util.*;
import com.dao;
import com.student;

public final class student_005fdata_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\" integrity=\"sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\" integrity=\"sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.min.js\" integrity=\"sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <title>Shujja Ahmed - 2093</title>\n");
      out.write("    </head>\n");
      out.write("   <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarTogglerDemo03\" aria-controls=\"navbarTogglerDemo03\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("  <a class=\"navbar-brand\" href=\"#\">Navbar</a>\n");
      out.write("\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarTogglerDemo03\">\n");
      out.write("    <ul class=\"navbar-nav mr-auto mt-2 mt-lg-0\">\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("        <a class=\"nav-link\" href=\"#\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"#\">Link</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link disabled\" href=\"#\">Disabled</a>\n");
      out.write("      </li>\n");
      out.write("    </ul>\n");
      out.write("    <div class=\"form-inline my-2 my-lg-0\">\n");
      out.write("        ");
 if(session.getAttribute("rollNo") == null){ 
      out.write("\n");
      out.write("        <a href=\"login.jsp\" ><button class=\"btn btn-danger my-2 my-sm-0\">Login</button></a>\n");
      out.write("        <a href=\"register.jsp\" ><button class=\"btn btn-danger my-2 my-sm-0\">Register</button></a>\n");
      out.write("        ");
 } else { 
      out.write("\n");
      out.write("        <a>Welcome ");
      out.print( session.getAttribute("name").toString() );
      out.write("</a>\n");
      out.write("        <a href=\"LogoutServlet\" ><button class=\"btn btn-danger my-2 my-sm-0\">Logout</button></a>\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\" >");
      out.write('\n');
      out.write('\n');
 
    if(session.getAttribute("rollNo") == null){
        response.sendRedirect("login.jsp");
    }

      out.write("\n");
      out.write("\n");
      out.write("<table class=\"table\">\n");
      out.write("    <thead class=\"thead-dark\">\n");
      out.write("        <tr>\n");
      out.write("            <th scope=\"col\">Roll#</th>\n");
      out.write("            <th scope=\"col\">Subject</th>\n");
      out.write("            <th scope=\"col\">CH</th>\n");
      out.write("            <th scope=\"col\">Marks</th>\n");
      out.write("            <th scope=\"col\">Grade</th>\n");
      out.write("            <th scope=\"col\">Semester</th>\n");
      out.write("        </tr>\n");
      out.write("    </thead>\n");
      out.write("    <tbody>\n");
      out.write("        ");
 HttpSession xsession = request.getSession();
            if(xsession.getAttribute("rollNo") != null){
                dao dao = new dao();
           
            xsession.getAttribute("rollNo");
            int rollNo = Integer.parseInt(session.getAttribute("rollNo").toString());
            ResultSet rs = dao.singleStudent(rollNo);
            while(rs.next()){
        
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <th scope=\"row\"> ");
      out.print( rs.getInt("rollNo") );
      out.write(" </th>\n");
      out.write("            <td>");
      out.print( rs.getString("subject") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print( rs.getInt("creditHour") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print( rs.getFloat("marks") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print( rs.getString("grade") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print( rs.getString("semester") );
      out.write("</td>\n");
      out.write("        </tr>\n");
      out.write("        ");
 }}
      out.write("\n");
      out.write("    </tbody>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write('\n');
      out.write('\n');
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
