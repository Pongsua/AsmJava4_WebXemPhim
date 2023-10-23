package JPA;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//CookieHelper.java
public class CookieHelper {

 public static void saveLoginCookie(HttpServletResponse response, String username) {
     Cookie loginCookie = new Cookie("username", username);
     loginCookie.setMaxAge(7 * 24 * 60 * 60); 
     loginCookie.setPath("/asmJava4"); 
     response.addCookie(loginCookie);
 }

 public static String getLoggedInUsername(HttpServletRequest request) {
     Cookie[] cookies = request.getCookies();
     if (cookies != null) {
         for (Cookie cookie : cookies) {
             if (cookie.getName().equals("username")) {
                 return cookie.getValue();
             }
         }
     }
     return null;
 }

 public static void clearLoginCookie(HttpServletResponse response) {
     // Tạo cookie chứa thông tin đăng nhập (ví dụ: tên người dùng) với thời gian tồn tại là 0
     Cookie loginCookie = new Cookie("username", "");
     loginCookie.setMaxAge(0); // Thời gian tồn tại của cookie là 0, nghĩa là sẽ bị xóa ngay lập tức
     loginCookie.setPath("/asmJava4"); // Đặt path tương ứng với context path của ứng dụng
     response.addCookie(loginCookie);
 }
 

}
