package DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import JPA.JpaUtils;
import model.Users;
import model.Videos;


public class UsersDao {
	public static List<Users> selectAll() {
	    List<Users> UsersList = new ArrayList<>();
	    EntityManager entityManager = JpaUtils.getEntityManager();

	    try {
	        String jpql = "SELECT u FROM Users u";
	        TypedQuery<Users> query = entityManager.createQuery(jpql, Users.class);
	        UsersList = query.getResultList();
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        entityManager.close();
	    }

	    return UsersList;
	}
	
	
	public static Users selectById(String id) {
		Users us = null;
	    EntityManager entityManager = Persistence.createEntityManagerFactory("asmjava4").createEntityManager();

	    try {
	    	us = entityManager.find(Users.class, id);
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        entityManager.close();
	    }

	    return us;
	}
	
	
	
	
	public static void create(Users us) {
		EntityManager em = JpaUtils.getEntityManager();

		EntityTransaction trans = em.getTransaction();

		try {
			trans.begin();

			em.persist(us);

			trans.commit();
		} catch (Exception e) {
			trans.rollback();
		}
	}
	
	
	public static void update(Users us) {
		EntityManager em = Persistence.createEntityManagerFactory("asmjava4").createEntityManager();
		EntityTransaction trans = em.getTransaction();
		System.out.println(us.getUsername());
		try {
			trans.begin();
			// update object
			em.merge(us);
			// accept trans operation
			trans.commit();
		} catch (Exception e) {
			trans.rollback();
		} finally {
			em.close();
		}
		
	
	}
	
	public static String delete(Users vd) {
		EntityManager entityManager = JpaUtils.getEntityManager();
	try {
		EntityTransaction tran = entityManager.getTransaction();
		tran.begin();
		Users user = entityManager.find(Users.class, vd.getUsername());
		if (user == null) {
			   System.out.println("Không Tìm Thấy id");
		}else {
			entityManager.remove(user);
			System.out.println("Xoá Thành Công");
	           tran.commit();
	           return "Xóa user thành công";
		}
		
	} catch (Exception e) {
		// TODO: handle exception
	}
	 return "Xóa user có thể ảnh hưởng đến report";
	}	

	
	public static void main(String[] args) {
//		 List<Users>  li = selectAll();
//		for (Users item : li) {
//			System.out.println(item.getUsername());
//			System.out.println(item.getPasswords());
//			System.out.println();
//			
//		}
Users us = new Users("user1", "fullname_user1", "baokhays@gmail.com", false, "user1");
create(us);
	}
}
