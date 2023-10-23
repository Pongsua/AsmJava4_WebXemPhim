package main;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.Random;
import java.util.Date;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import DAO.*;

import JPA.CookieHelper;
import JPA.JpaUtils;
import JPA.sendMail;
import model.Favorites;
import model.Report;
import model.Shares;
import model.Users;
import model.Videos;


@WebServlet(urlPatterns = { "/account/index" 
		, "/account/login"
		, "/account/forgot"
		, "/account/home"
		, "/account/edit-profile"
		, "/account/favorites"
		, "/account/signup"
		, "/account/logout"
		, "/account/chooseVideo"
		, "/account/share"
		, "/account/like"
		, "/account/report"
		
		, "/account/videomanagerment"
		, "/account/createVideo"
		, "/account/updateVideo"
		, "/account/deleteVideo"
		, "/account/xemVideo"
		, "/account/resetformVideo"
		
		, "/account/usermanagerment"
		, "/account/createUser"
		, "/account/updateUser"
		, "/account/deleteUser"
		, "/account/xemUser"
		, "/account/resetformUser"
		
		, "/account/findFavoritesUserByTitle"
		, "/account/findShared"
		, "/account/otp"
		,"/tab"
		})
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Videos chooseVideo = new Videos();
	String	URlChooseVideo = "";
	Random random = new Random();
	Users usOtp = new Users();
    // Tạo số nguyên ngẫu nhiên từ 1000 đến 9999
    int randomNumber=0;
    public index() {
        super();
    }
    
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String url = request.getRequestURI().toString();
    	
		if (url.contains("index")) {
			this.initHomePage(request, response);
		} else if (url.contains("login")) {
			this.login(request, response);
		} else if (url.contains("signup")) {
			System.out.println("đăng ky");
			this.signup(request, response);
		}else if (url.contains("home")) {
			response.sendRedirect(request.getContextPath() + "/index");
		}else if (url.contains("logout")) {
			CookieHelper.clearLoginCookie(response);
			response.sendRedirect(request.getContextPath() + "/index");
		}else if (url.contains("chooseVideo")) {
			this.chooseVideo(request, response);
		}else if (url.contains("edit-profile")) {
			this.editprofile(request, response);
		}else if (url.contains("forgot")) {
			this.forgotpass(request, response);
		}else if (url.contains("share")) {
			this.shareVideo(request, response);
		}else if (url.contains("favorites")) {
			this.favorites(request, response);
		}else if (url.contains("like")) {
			this.like(request, response);
		}else if (url.contains("report")) {
			this.report(request, response);
		}else if (url.contains("usermanagerment")) {
			this.usermanagerment(request, response);
		}
		
		else if (url.contains("videomanagerment")) {
			this.videomanagerment(request, response);
		}else if (url.contains("/createVideo")) {
			this.createVideo(request, response);
		}else if (url.contains("/updateVideo")) {
			this.updateVideo(request, response);
		}else if (url.contains("/deleteVideo")) {
			this.deleteVideo(request, response);
		}else if (url.contains("/xemVideo")) {
			this.xemVideo(request, response);
		}else if (url.contains("/resetformVideo")) {
			this.resetformVideo(request, response);
		}
		
		else if (url.contains("/createUser")) {
			this.createUser(request, response);
		}else if (url.contains("/updateUser")) {
			this.updateUser(request, response);
		}else if (url.contains("/deleteUser")) {
			this.deleteUser(request, response);
		}else if (url.contains("/xemUser")) {
			this.xemUser(request, response);
		}else if (url.contains("/resetformUser")) {
			this.resetformUser(request, response);
		}else if (url.contains("/findFavoritesUserByTitle")) {
			this.findFavoritesUserByTitle(request, response);
		}else if (url.contains("/findShared")) {
			this.findShared(request, response);
		}
		
		else if (url.contains("/tab")) {
			this.tab(request, response);
		}
		else if (url.contains("/otp")) {
			this.otp(request, response);
		}
    }
	
	private void otp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String newpass = request.getParameter("newpass");
		Integer otp = Integer.parseInt(request.getParameter("otp"));
		if (newpass.equals("") || newpass.isEmpty()) {
			request.setAttribute("ms", "Chưa nhập new pass");
			request.getRequestDispatcher("/site/otp.jsp").forward(request, response);
			return;
		}
		
		if (otp != randomNumber) {
			request.setAttribute("ms", "Mã xác nhận không chính xác");
			request.getRequestDispatcher("/site/otp.jsp").forward(request, response);
			return;
		}
		
		usOtp.setPasswords(newpass);
		UsersDao.update(usOtp);
		request.setAttribute("ms", "Đổi mật khẩu thành công");
		request.getRequestDispatcher("/site/otp.jsp").forward(request, response);
	}


	private void tab(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		System.out.println(request.getParameter("tab"));
	
		Integer tab = Integer.parseInt(request.getParameter("tab"));
		request.setAttribute("activeTab", tab);
		List<Videos> listTab = VideosDao.findPage(tab, 12);
		
		request.setAttribute("bean", listTab);
		coki(request);;
		
		request.setAttribute("view", "testHome.jsp" );
		request.setAttribute("css", "index" );
		request.getRequestDispatcher("/site/index_edit_changepass.jsp").forward(request, response);		
	}


	private void findShared(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String findTitleShared =  request.getParameter("cboTab3");
		
		request.getSession().setAttribute("findTitleShared", findTitleShared );
		
		EntityManager em = JpaUtils.getEntityManager();
		String jpql = "SELECT o  FROM Shares o where o.video.Title like :title";
		TypedQuery<Shares> query = em.createQuery(jpql, Shares.class);
		query.setParameter("title", findTitleShared);
		List<Shares> listTab3 = query.getResultList();
		request.setAttribute("listTab3", listTab3);
			
		report(request, response);
	}


	private void findFavoritesUserByTitle(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String findTitle =  request.getParameter("cboTab2");
		
		request.getSession().setAttribute("findTitle", findTitle);
		
		EntityManager em = JpaUtils.getEntityManager();
		String jpql = "SELECT o  FROM Favorites o where o.video.Title like :title";
		TypedQuery<Favorites> query = em.createQuery(jpql, Favorites.class);
		query.setParameter("title", findTitle);
		List<Favorites> listTab2 = query.getResultList();
		request.setAttribute("listTab2", listTab2);
			
		report(request, response);
	}


	private void resetformUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Users editUser = new Users();
		editUser.setAdmin(true);
		request.setAttribute("readonly", false);
		request.setAttribute("editUser", editUser);
		usermanagerment(request, response);
	}


	private void xemUser(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		System.out.println(request.getParameter("id"));
		Users editUser = UsersDao.selectById(request.getParameter("id"));
		request.setAttribute("readonly", true);
		request.setAttribute("editUser", editUser);
		usermanagerment(request, response);
	}


	private void deleteUser(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Users delUser = new Users();
		try {
			BeanUtils.populate(delUser, request.getParameterMap());
			if (delUser.getUsername() == null || delUser.getUsername().isEmpty()) {
				request.setAttribute("msg", "Xóa không thành công vì chưa chọn User");
				usermanagerment(request, response);
				return;
			}
			 String a =  UsersDao.delete(delUser);
			request.setAttribute("msg", a);

		} catch (Exception e) {
			System.out.println("Thất bại " + e.getMessage());
			request.setAttribute("msg", "Xóa user không thành công");
		}
		usermanagerment(request, response);
	}


	private void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Users upUser = new Users();
		try {
		    BeanUtils.populate(upUser, request.getParameterMap());
		    if (upUser.getUsername() != null && !upUser.getUsername().isEmpty()
		            && upUser.getFullname() != null && !upUser.getFullname().isEmpty()
		            && upUser.getPasswords() != null && !upUser.getPasswords().isEmpty()
		            && upUser.getEmail() != null && !upUser.getEmail().isEmpty()) {
		        UsersDao.update(upUser);
		        request.setAttribute("msg", "Cập nhật user thành công");
		    } else {
		        request.setAttribute("msg", "Cập nhật user không thành công");
		    }
		    usermanagerment(request, response);
		} catch (Exception e) {
		    System.out.println("Thất bại " + e.getMessage());
		}
	}


	private void createUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Users creUser = new Users();
		try {
		    BeanUtils.populate(creUser, request.getParameterMap());
		  	 
		    if (creUser.getUsername() != null && !creUser.getUsername().isEmpty()
		            && creUser.getFullname() != null && !creUser.getFullname().isEmpty()
		            && creUser.getPasswords() != null && !creUser.getPasswords().isEmpty()
		            && creUser.getEmail() != null && !creUser.getEmail().isEmpty()) {
		        UsersDao.create(creUser);
		        request.setAttribute("msg", "Thêm user thành công");
		    } else {
		        request.setAttribute("msg", "Thêm user không thành công");
		    }
		    usermanagerment(request, response);
		} catch (Exception e) {
		    System.out.println("Thất bại " + e.getMessage());
		}
	}


	private void resetformVideo(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		Videos editVideo = new Videos();
		editVideo.setActive(true);
		request.setAttribute("readonly", false);
		request.setAttribute("editVideo", editVideo);
		videomanagerment(request, response);
		
	}


	private void xemVideo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		System.out.println(request.getParameter("id"));
		Videos editVideo = VideosDao.selectById(request.getParameter("id"));
		request.setAttribute("readonly", true);
		request.setAttribute("editVideo", editVideo);
		videomanagerment(request, response);
		
	}

	private void deleteVideo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Videos delVid = new Videos();
		try {
			BeanUtils.populate(delVid, request.getParameterMap());
			if (delVid.getVideoId() == null || delVid.getVideoId().isEmpty()) {
				request.setAttribute("msg", "Xóa không thành công vì chưa chọn Video");
				videomanagerment(request, response);
				return;
			}
			
			
			delVid.setPoster( "https://img.youtube.com/vi/"+delVid.getVideoId()+"/maxresdefault.jpg" );
			System.out.println(delVid.getVideoId() + " 000000000000000000000000000000000000");
			 String a = VideosDao.delete(delVid);
		 	request.setAttribute("msg", a);

		} catch (Exception e) {
			System.out.println("Thất bại " + e.getMessage());
			request.setAttribute("msg", "Xóa không thành công");
		}
		videomanagerment(request, response);
	}

	private void updateVideo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Videos upVid = new Videos();
		try {
		    BeanUtils.populate(upVid, request.getParameterMap());
		    upVid.setPoster( "https://img.youtube.com/vi/"+upVid.getVideoId()+"/maxresdefault.jpg" );
		    if ( upVid.getTitle() != null && !upVid.getTitle().isEmpty()) {
		    	System.out.println(upVid.getVideoId());
		    	System.out.println(upVid.getTitle());
		    	System.out.println(upVid.isActive());
		    	System.out.println(upVid.getDecscription());
		        VideosDao.update(upVid);
		        request.setAttribute("msg", "Cập nhật video thành công");
		    } else {
		        request.setAttribute("msg", "Cập nhật không thành công");
		    }
		    videomanagerment(request, response);
		} catch (Exception e) {
		    System.out.println("Thất bại " + e.getMessage());
		}
	}

	private void createVideo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Videos creVid = new Videos();
		try {
		    BeanUtils.populate(creVid, request.getParameterMap());
		    creVid.setPoster("https://img.youtube.com/vi/" + creVid.getVideoId() + "/maxresdefault.jpg");
		    creVid.setViews(0);
		    if (creVid.getVideoId() != null && !creVid.getVideoId().isEmpty()
		            && creVid.getTitle() != null && !creVid.getTitle().isEmpty()) {
		        VideosDao.create(creVid);
		        request.setAttribute("msg", "Thêm video thành công");
		    } else {
		        request.setAttribute("msg", "Thêm video không thành công");
		    }
		    videomanagerment(request, response);
		} catch (Exception e) {
		    System.out.println("Thất bại " + e.getMessage());
		}

		
	}

	private void coki(HttpServletRequest request) {
    	String userCookie = CookieHelper.getLoggedInUsername(request);
		System.out.println("----------------------" +  userCookie + "----------------------");
			
		if (userCookie == null) {
			request.setAttribute("loginStatus", "NotLogged");
		}else {
			Users UserLogged = UsersDao.selectById(CookieHelper.getLoggedInUsername(request));
			if (!UserLogged.isAdmin()) {
				request.setAttribute("loginStatus", "LoggedUser");
			}else {
				request.setAttribute("loginStatus", "LoggedAdmin");
			}
			request.setAttribute("UserLogged", UserLogged);
		}	
	}
    
	protected void initHomePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		List<Videos> VideosList = VideosDao.findPage(1, 12);
//		VideosList = VideosDao.selectAll();
		request.setAttribute("activeTab", 1);
		request.setAttribute("bean", VideosList);
	
		coki(request);;
		
		request.setAttribute("view", "testHome.jsp" );
		request.setAttribute("css", "index" );
		request.getRequestDispatcher("/site/index_edit_changepass.jsp").forward(request, response);		
		
	}
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
	if (request.getMethod().equalsIgnoreCase("POST")) {
		String username = request.getParameter("Username");
		String password = request.getParameter("Passwords");
		Users us = UsersDao.selectById(username);
		
		if (us == null || !us.getPasswords().equals(password)) {
			 request.setAttribute("loginFailedMessage", "Đăng nhập thất bại");
			 request.getRequestDispatcher("/site/login_signup.jsp").forward(request, response);
		} else {
			// Đăng nhập thành công
			 CookieHelper.saveLoginCookie(response, us.getUsername());

			response.sendRedirect(request.getContextPath() + "/index");
			}
		
	}else {
			request.getRequestDispatcher("/site/login_signup.jsp").forward(request, response);
	}
	
	}

	protected void signup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
			
		if (request.getMethod().equalsIgnoreCase("POST")) {
			Users signUpUser = new Users();
			signUpUser.setUsername(request.getParameter("Username"));
			signUpUser.setFullname(request.getParameter("Fullname"));
			signUpUser.setEmail(request.getParameter("Email"));
			signUpUser.setPasswords(request.getParameter("Passwords"));
			UsersDao.create(signUpUser);
			request.setAttribute("loginFailedMessage", "Đăng ký thành công");
			
		}
	
			request.getRequestDispatcher("/site/login_signup.jsp").forward(request, response);
	}
    
    
	
	protected void chooseVideo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
	
		URlChooseVideo = request.getRequestURI().toString();
		
		EntityManager entityManager = JpaUtils.getEntityManager();
		TypedQuery<Videos> query = entityManager.createNamedQuery("Report.random10", Videos.class);
		List<Videos> listRandom = query.getResultList();
		
		
		String videoId = request.getParameter("id");
	
		Videos chooseVideo = VideosDao.selectById(videoId);
		this.chooseVideo = chooseVideo;
		System.out.println(this.chooseVideo.getTitle()  + "00000000000000000000000");
		chooseVideo.setViews(chooseVideo.getViews()+1);
		VideosDao.update(chooseVideo);
		request.setAttribute("bean", listRandom);	
		request.setAttribute("chooseVideo", chooseVideo);	
		
		coki(request);
		
		List<Videos> findFavoritesByUser = findFavoritesByUser1(request);
	    for (Videos item : findFavoritesByUser) {
			if (item.getVideoId().equals(chooseVideo.getVideoId())) {
			request.setAttribute("dathich", true);
				break;
			}
		}

		
		request.setAttribute("view", "testDetail.jsp" );
		request.setAttribute("css", "detail" );
		request.getRequestDispatcher("/site/index_edit_changepass.jsp").forward(request, response);		


//		request.getRequestDispatcher("/site/detail_share.jsp").forward(request, response);
		
		
	}
	
	protected void editprofile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	if (request.getMethod().equalsIgnoreCase("POST")) {
		try {
			Users upda = new Users();
			
			BeanUtils.populate(upda, request.getParameterMap());
			Users kha = UsersDao.selectById(upda.getUsername());
			
			
			String OldPasswords = request.getParameter("passwords");
		String NewPasswords = request.getParameter("NewPasswords");
		String ConfirmPasswords = request.getParameter("ConfirmPasswords");
		
//		if (NewPasswords.length() > 0 && NewPasswords.equals(ConfirmPasswords)) {
//			upda.setPasswords(NewPasswords);
//			
//		}
		
		if (OldPasswords.length() <= 0) {
			upda.setPasswords(kha.getPasswords());
		}
		if (OldPasswords.length() > 0 && !OldPasswords.equals(kha.getPasswords())) {
			request.setAttribute("updateFailedMessage", "Thất bại");
			response.sendRedirect(request.getContextPath() + "/index");
			String updateFailedMessage = (String) request.getAttribute("updateFailedMessage");
			System.out.println(updateFailedMessage);
			return;
			
		}
		if (NewPasswords.length() > 0 && NewPasswords.equals(ConfirmPasswords)) {
			upda.setPasswords(NewPasswords);

		}
		UsersDao.update(upda);
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		}
	response.sendRedirect(request.getContextPath() + "/index");
	}
	protected void forgotpass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
	
         
		if (request.getMethod().equalsIgnoreCase("Get")) {
			request.getRequestDispatcher("/site/forgotpass.jsp").forward(request, response);
		}else {
				
			
			String id = request.getParameter("username");
			Users us = UsersDao.selectById(id);
			if (us == null) {
				request.setAttribute("ms", "Username không tồn tại");
				request.getRequestDispatcher("/site/forgotpass.jsp").forward(request, response);
				return;
			}
			
			randomNumber = random.nextInt(9000) + 1000;
			usOtp = us;
	         System.out.println(randomNumber);
			String recipient = us.getEmail(); // Địa chỉ email người nhận
			String recipient2 = request.getParameter("email"); // Địa chỉ email người nhận
			String subject = "Quên mật khẩu"; // Tiêu đề email
			String content = "Mã xác nhận của bạn là : " + randomNumber; // Nội dung email

			
			if (!us.getEmail().equals(recipient2)) {
				request.setAttribute("ms", "Mail không đúng với tài khoản");
				request.getRequestDispatcher("/site/forgotpass.jsp").forward(request, response);
				return;
			}
			
			sendMail.mail(request, response, recipient, subject, content, "Mật khẩu đã gửi đến mail của bạn !");
			
			
			request.getRequestDispatcher("/site/otp.jsp").forward(request, response);
			
		}
	}
	
	protected void shareVideo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
	 String uri = 	request.getRequestURI();
	 StringBuffer url = 	request.getRequestURL();
	 
	 System.out.println(uri);
	 System.out.println(url);
		if (request.getMethod().equalsIgnoreCase("POST")) {
		
						
			String recipient =  request.getParameter("mailRecipient"); // Địa chỉ email người nhận
			//String recipient2 = request.getParameter("email"); // Địa chỉ email người nhận
			String subject = "Xem video này đi : " + chooseVideo.getTitle(); // Tiêu đề email
			String content = "https://youtu.be/" +  chooseVideo.getVideoId(); // Nội dung email

			String userCookie = CookieHelper.getLoggedInUsername(request);
			Users u = UsersDao.selectById(userCookie);
			 LocalDate ngayHienTai = LocalDate.now();	
			
			sendMail.mail(request, response, recipient, subject, content, "Link video đã gửi đi !");
			Shares sh = new Shares(u, chooseVideo, recipient, java.sql.Date.valueOf(ngayHienTai));
			SharesDao.create(sh);
			response.sendRedirect(request.getContextPath() + "/account//chooseVideo?&id=" + chooseVideo.getVideoId());
			
		}
	}
	
	protected void favorites(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		List<Videos> listFavorites =findFavoritesByUser1(request);
		    coki(request);
		    request.setAttribute("bean", listFavorites );
			request.setAttribute("view", "favorite.jsp" );
			request.setAttribute("css", "favorites" );
			request.getRequestDispatcher("/site/index_edit_changepass.jsp").forward(request, response);		
		    
	}
	protected void like(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		List<Favorites> listFavorites = findFavoritesByUser2(request);
		boolean KTthich = false;
		 for (Favorites item : listFavorites) {
				if (item.getVideo().getVideoId().equals(chooseVideo.getVideoId())) {
			KTthich = true;
					break;
				}
			}
		 
		 Favorites fv = new Favorites();
		 Users us = UsersDao.selectById(CookieHelper.getLoggedInUsername(request));
		 Videos vd = VideosDao.selectById(this.chooseVideo.getVideoId());
			fv.setVideo(vd);
			fv.setUser(us);
			fv.setLikedDate(java.sql.Date.valueOf(LocalDate.now()));
			if (KTthich) {
				 fv = FavoritesDao.selectByUsername_Videos(us, vd);
				FavoritesDao.delete(fv);
				
			} else {
				FavoritesDao.create(fv);
			}
			
			response.sendRedirect(request.getContextPath() + "/account/favorites");
	}
	
	protected void videomanagerment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");	
		coki(request);
		List<Videos> videoList = VideosDao.selectAll();
		request.setAttribute("videoList", videoList);
		request.setAttribute("view", "/adminform/view_videomanagerment.jsp" );
		request.setAttribute("css", "videomanagerment" );
	
		
		
		request.getRequestDispatcher("/site/index_edit_changepass.jsp").forward(request, response);
	}
	
	protected void usermanagerment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		coki(request);
		List<Users> userList = UsersDao.selectAll();
		request.setAttribute("userList", userList);
		request.setAttribute("view", "/adminform/view_usermanagerment.jsp" );
		request.setAttribute("css", "usermanagerment" );
		
	
		request.getRequestDispatcher("/site/index_edit_changepass.jsp").forward(request, response);
	}
	
	protected void report(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Tab 1
		String jpql = "SELECT new Report(o.video.Title, count(o), "
				+ " max(o.LikedDate), min(o.LikedDate)) "
				+ " FROM Favorites o "
				+ " GROUP BY o.video.Title";
		EntityManager em = JpaUtils.getEntityManager();
		TypedQuery<Report> query = em.createQuery(jpql, Report.class);
		List<Report> listtab1 = query.getResultList();
		request.setAttribute("reportlisttab1", listtab1);

		//Tab 2
		request.setAttribute("comboboxTab2", listtab1);
        String findTitle =  request.getSession().getAttribute("findTitle")+"";
        request.setAttribute("findTitle", findTitle);
	
        if (findTitle != null && !findTitle.isEmpty() && findTitle.length()>1) {
			        
        String jpql2 = "SELECT o  FROM Favorites o where o.video.Title like :title";
		TypedQuery<Favorites> query2 = em.createQuery(jpql2, Favorites.class);
		query2.setParameter("title", findTitle);
		List<Favorites> listTab2 = query2.getResultList();
		request.setAttribute("listTab2", listTab2);
        
		}else {
			String jpql2 = "SELECT o  FROM Favorites o where o.video.Title like :title";
			TypedQuery<Favorites> query2 = em.createQuery(jpql2, Favorites.class);
			query2.setParameter("title", listtab1.get(0).getgroupTitle());
			List<Favorites> listTab2 = query2.getResultList();
			request.setAttribute("listTab2", listTab2);
		}

        
        
        //Tab 3
        String jpqlcboTab3 = "SELECT DISTINCT s.video.Title FROM Shares s";
		TypedQuery<String> querycboTab3 = em.createQuery(jpqlcboTab3, String.class);
		List<String> listcbotab3 = querycboTab3.getResultList();
		 request.setAttribute("comboboxTab3", listcbotab3);
		 String findTitleShared =  request.getSession().getAttribute("findTitleShared")+"";
	     request.setAttribute("findTitleShared", findTitleShared);	
	     
	     if (findTitleShared ==  null || findTitleShared.isEmpty()) {
	    	 String jpql3 = "SELECT o  FROM Shares o where o.video.Title like :title";
	    		TypedQuery<Shares> query3 = em.createQuery(jpql3, Shares.class);
	    		query3.setParameter("title", listcbotab3.get(0));
	    		List<Shares> listTab3 = query3.getResultList();
	    		request.setAttribute("listTab3", listTab3);
		} else {
    		String jpql3 = "SELECT o  FROM Shares o where o.video.Title like :title";
    		TypedQuery<Shares> query3 = em.createQuery(jpql3, Shares.class);
    		query3.setParameter("title", findTitleShared);
    		List<Shares> listTab3 = query3.getResultList();
    		request.setAttribute("listTab3", listTab3);
		}
	     
	     
		request.setAttribute("view", "/adminform/view_report.jsp" );
		request.setAttribute("css", "report" );
		coki(request);
		request.getRequestDispatcher("/site/index_edit_changepass.jsp").forward(request, response);
	}
	
	
	private List<Videos> findFavoritesByUser1(HttpServletRequest request) {
		EntityManager entityManager = JpaUtils.getEntityManager();
		TypedQuery<Videos> query = entityManager.createNamedQuery("Videos.findByUser", Videos.class);
		query.setParameter("username",  CookieHelper.getLoggedInUsername(request) );
		List<Videos> listFavorites = query.getResultList();
		
		return listFavorites;
	}
	private List<Favorites> findFavoritesByUser2(HttpServletRequest request) {
		EntityManager em = JpaUtils.getEntityManager();
		Users user = em.find(Users.class, CookieHelper.getLoggedInUsername(request));
		List<Favorites> listFavorites = user.getFavorites();

		return listFavorites;
	}
}
