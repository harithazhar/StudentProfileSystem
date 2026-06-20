package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class PersonalInfo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Profile Details</title>\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("    <style>\n");
      out.write("        .profile-card { border-radius: 25px; box-shadow: 0 15px 35px rgba(0,0,0,0.1); border: none; }\n");
      out.write("        .info-item { display: flex; align-items: center; padding: 15px 0; border-bottom: 1px solid #eee; }\n");
      out.write("        .icon-col { width: 40px; color: #1a3c34; }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body class=\"bg-light\">\n");
      out.write("    <div class=\"container mt-5\">\n");
      out.write("        <div class=\"card profile-card col-md-6 mx-auto p-4\">\n");
      out.write("            <div class=\"text-center mb-4\">\n");
      out.write("                <i class=\"fas fa-user-circle fa-4x text-muted\"></i>\n");
      out.write("                <h3 class=\"mt-3\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${profileName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h3>\n");
      out.write("                <span class=\"badge bg-success\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${profileProgram}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"info-item\">\n");
      out.write("                <div class=\"icon-col\"><i class=\"fas fa-fingerprint\"></i></div>\n");
      out.write("                <div><strong>ID:</strong> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${profileId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"info-item\">\n");
      out.write("                <div class=\"icon-col\"><i class=\"fas fa-envelope\"></i></div>\n");
      out.write("                <div><strong>Email:</strong> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${profileEmail}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"info-item\">\n");
      out.write("                <div class=\"icon-col\"><i class=\"fas fa-heart\"></i></div>\n");
      out.write("                <div><strong>Hobbies:</strong> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${profileHobbies}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"mt-4\">\n");
      out.write("                <strong>Bio:</strong>\n");
      out.write("                <p class=\"text-muted mt-2\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${profileBio}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("            </div>\n");
      out.write("            <a href=\"index.html\" class=\"btn btn-outline-dark mt-3 w-100\"><i class=\"fas fa-arrow-left\"></i> Back to Registration</a>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
