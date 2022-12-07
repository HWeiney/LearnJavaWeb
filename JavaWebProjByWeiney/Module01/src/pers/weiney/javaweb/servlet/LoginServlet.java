package pers.weiney.javaweb.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Weiney
 * @ToDo 处理登录的Servlet
 * @create 2022-12-07 20:56
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    // 采用注解的方式配置LoginServlet 【@WebServlet("/LoginServlet")】
    // extends继承HttpServlet，然后使用快捷键【Alt + Shift + S】，Override methods -> 重写doPost()方法
    // 因为前端的登录from表单提交的是post方法体，因此重写doPost()方法
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // request.getParameter()方法，获取前端提交的参数
        // getParameter()的参数尽量去前端的name属性去复制，不要自己写，容易出错
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // 简单的验证逻辑，正常应该调用service层【MVC中的服务层】中的实现类进行数据查询验证
        // 此处我们就先暂写一个普通逻辑
        if ("Weiney".equals(username) && "123456".equals(password)) {
            // 用户名和密码验证成功则登录成功，跳转到系统的主界面
            // 没有携带数据【request.setAttribute("",)】,因此我们先使用重定向方法
            // response.sendRedirect()的参数是【项目路径 + 资源路径】
            // 项目路径可以用 request.getContextPath()动态获取
            response.sendRedirect(request.getContextPath() + "/main.jsp");
        } else {
            // 用户名密码错误，跳转失败界面【重定向】
            response.sendRedirect(request.getContextPath() + "/error.jsp");
        }
    }
}
