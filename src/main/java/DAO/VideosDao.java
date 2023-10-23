package DAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import JPA.JpaUtils;

import model.Videos;


public class VideosDao {
	public static List<Videos> selectAll() {
	    List<Videos> VideosList = new ArrayList<>();
	    EntityManager entityManager = Persistence.createEntityManagerFactory("asmjava4").createEntityManager();

	    try {
	        String jpql = "SELECT u FROM Videos u";
	        TypedQuery<Videos> query = entityManager.createQuery(jpql, Videos.class);
	        VideosList = query.getResultList();
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        entityManager.close();
	    }

	    return VideosList;
	}
	
	
	public static Videos selectById(String id) {
	    Videos Videos = null;
	    EntityManager entityManager = Persistence.createEntityManagerFactory("asmjava4").createEntityManager();

	    try {
	        Videos = entityManager.find(Videos.class, id);
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        entityManager.close();
	    }

	    return Videos;
	}
	
	
	
	
	public static void create(Videos Videos) {
		EntityManager entityManager = Persistence.createEntityManagerFactory("asmjava4").createEntityManager();
	try {
		EntityTransaction tran = entityManager.getTransaction();
		tran.begin();
		entityManager.persist(Videos);
		   System.out.println("thêm thành công");
		tran.commit();
	} catch (Exception e) {
		// TODO: handle exception
	}
	}
	
	
	public static void update(Videos vd) {
		EntityManager entityManager = Persistence.createEntityManagerFactory("asmjava4").createEntityManager();
		System.out.println(vd.getVideoId());
	try {
		EntityTransaction tran = entityManager.getTransaction();
		tran.begin();
		Videos Videos = entityManager.find(Videos.class, vd.getVideoId());
		if (Videos == null) {
			   System.out.println("Không Tìm Thấy id");

		}else {
			Videos.setTitle(vd.getTitle());
			Videos.setPoster(vd.getPoster());
			Videos.setDecscription(vd.getDecscription());
			Videos.setViews(vd.getViews());
			Videos.setActive(vd.isActive());
			
			entityManager.merge(Videos);
			System.out.println("Thay Đổi Thành Công");
	           tran.commit();
		}
		
	} catch (Exception e) {
		// TODO: handle exception
	}
	}
	
	public static String delete(Videos vd) {
		EntityManager entityManager = Persistence.createEntityManagerFactory("asmjava4").createEntityManager();
	try {
		EntityTransaction tran = entityManager.getTransaction();
		tran.begin();
		Videos Videos = entityManager.find(Videos.class, vd.getVideoId());
		if (Videos == null) {
			   System.out.println("Không Tìm Thấy id");

		}else {
			
			entityManager.remove(Videos);
			System.out.println("Xoá Thành Công");
	           tran.commit();
	           return "Xóa video thành công";
		}
		
	} catch (Exception e) {
		System.out.println("Xoá thât bại : " +e.getMessage());
	}
	 return "Xóa video có thể ảnh hưởng đến report";
	}	

	public static List<Videos> findPage(int page, int size) {
		EntityManager entityManager = JpaUtils.getEntityManager();
		List<Videos> videoList = new ArrayList<>();

		try {
			TypedQuery<Videos> query = entityManager.createQuery("SELECT u FROM Videos u", Videos.class);
			query.setFirstResult((page - 1) * size); // Vị trí bắt đầu của trang
			query.setMaxResults(size); // Số lượng User trên mỗi trang
			videoList = query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			entityManager.close();
		}

		return videoList;
	}

	
	public static void main(String[] args) {
//		Scanner sc = new Scanner(System.in);
//		while (true) {
//
//			
//			Videos vd = new Videos();
//			System.out.print("ID : ");
//			
//			String id  = sc.nextLine();
//			vd.setVideoId(id);
//			
//			
//			System.out.print("Title : ");
//			String title  = sc.nextLine();
//			vd.setTitle(title);
//			
//			String poster = "https://img.youtube.com/vi/" + id +"/maxresdefault.jpg";
//			vd.setPoster(poster);
//			vd.setViews(100);
//			vd.setDecscription("Thám tử lừng danh Conan xoay quanh câu chuyện về chàng thám tử Kudo Shinichi, trong một lần đang điều tra đã bị Tổ chức Áo Đen ép uống thuốc độc, khiến cho cơ thể bị teo nhỏ. Sau đó, Shinichi chuyển đến sống ở nhà của người bạn thuở niên thiếu Ran Mori cùng người bố Kogoro Mori. Tại đây, cậu dùng văn phòng thám tử của ông Kogoro để truy tìm tung tích của tổ chức Áo Đen đồng thời giúp ông phá nhiều vụ án dưới một thân phận mới là Conan Edogawa.");
//			vd.setActive(true);
//		
//
//			create(vd);
//		}
//		
		

	}
}
