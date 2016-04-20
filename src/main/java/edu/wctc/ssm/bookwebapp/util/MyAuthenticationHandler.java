/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.ssm.bookwebapp.util;

/**
 *
 * @author Scott
 */
import java.io.IOException;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

/**
 * * * @author jlombardo
 */
public class MyAuthenticationHandler extends SimpleUrlAuthenticationSuccessHandler {

     @Override
     public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws ServletException, IOException {
          //Where do the different autherization levels start (Webpages can be different for the different levels)
          //request.getServletContext().getContextPath()
          final String USER_URL = "/home.jsp";
          //request.getServletContext().getContextPath()
          final String ADMIN_URL = "/home.jsp";
          Set<String> roles = AuthorityUtils.authorityListToSet(authentication.getAuthorities());
          if (roles.contains("ROLE_MGR")) {
               getRedirectStrategy().sendRedirect(request, response, ADMIN_URL);
          } else if (roles.contains("ROLE_USER")) {
               getRedirectStrategy().sendRedirect(request, response, USER_URL);
          } else {
               super.onAuthenticationSuccess(request, response, authentication);
          }
     }
}
