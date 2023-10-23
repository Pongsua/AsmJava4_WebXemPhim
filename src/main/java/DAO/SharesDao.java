package DAO;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import JPA.JpaUtils;
import model.Shares;
import model.Shares;
import model.Videos;


public class SharesDao {
	public static List<Shares> selectAll() {
	    List<Shares> SharesList = new ArrayList<>();
	    EntityManager entityManager = JpaUtils.getEntityManager();

	    try {
	        String jpql = "SELECT u FROM Shares u";
	        TypedQuery<Shares> query = entityManager.createQuery(jpql, Shares.class);
	        SharesList = query.getResultList();
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        entityManager.close();
	    }

	    return SharesList;
	}
	
	
	public static Shares selectById(String id) {
		Shares us = null;
	    EntityManager entityManager = Persistence.createEntityManagerFactory("asmjava4").createEntityManager();

	    try {
	    	us = entityManager.find(Shares.class, id);
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        entityManager.close();
	    }

	    return us;
	}
	
	
	
	
	public static void create(Shares us) {
		EntityManager em = JpaUtils.getEntityManager();

		EntityTransaction trans = em.getTransaction();

		try {
			trans.begin();

			em.persist(us);

			trans.commit();
			System.out.println("Thêm thành công");
		} catch (Exception e) {
			System.out.println("Thêm thất bại : " + e.getMessage());
			trans.rollback();
			
		}
	}
	
	
	public static void update(Shares us) {
		EntityManager em = Persistence.createEntityManagerFactory("asmjava4").createEntityManager();
		EntityTransaction trans = em.getTransaction();
		System.out.println(us.getShareId());
		try {
			trans.begin();
			// update object
			em.merge(us);
			// accept trans operation
			System.out.println("Update thành công");
			trans.commit();
		} catch (Exception e) {
			System.out.println("Update thất bại : " +e.getMessage());
			trans.rollback();
		} finally {
			em.close();
		}
		
	
	}
	
	public static void delete(Shares vd) {
		EntityManager entityManager = JpaUtils.getEntityManager();
	try {
		EntityTransaction tran = entityManager.getTransaction();
		tran.begin();
		Shares s = entityManager.find(Shares.class, vd.getShareId());
		if (s == null) {
			   System.out.println("Không Tìm Thấy id");
		}else {
			entityManager.remove(s);
			System.out.println("Xoá Thành Công");
	           tran.commit();
		}
		
	} catch (Exception e) {
		// TODO: handle exception
	}
	}	

	
	public static void main(String[] args) {

Shares sh = new Shares(UsersDao.selectById("user6"), VideosDao.selectById("syb3AbJ4lWo"), "hihi@gmail.com", java.sql.Date.valueOf(LocalDate.now()));
create(sh);	
		
//		List<Shares> li = selectAll();
//		for (Shares item : li) {
//			System.out.println(item.getShareId());
//			System.out.println(item.getUser().getUsername());
//			System.out.println(item.getVideo().getTitle());
//			System.out.println("-------------------");
//
//		}
	}
}
