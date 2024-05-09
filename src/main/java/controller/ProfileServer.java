package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dto.User;
@WebServlet("/profilepage")
@MultipartConfig(maxFileSize = 20*1024*1024)
public class ProfileServer extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Part part=req.getPart("image");
		 byte[]image=part.getInputStream().readAllBytes();
		 
		 User sign=(User)req.getSession().getAttribute("user");
		 
		 sign.setUserimage(image);
		 resp.sendRedirect("home.jsp");;
	}

}
