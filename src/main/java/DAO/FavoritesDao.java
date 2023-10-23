package DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import JPA.JpaUtils;
import model.Favorites;
import model.Users;
import model.Videos;


public class FavoritesDao {
	public static List<Favorites> selectAll() {
	    List<Favorites> FavoritesList = new ArrayList<>();
	    EntityManager entityManager = JpaUtils.getEntityManager();

	    try {
	        String jpql = "SELECT u FROM Favorites u";
	        TypedQuery<Favorites> query = entityManager.createQuery(jpql, Favorites.class);
	        FavoritesList = query.getResultList();
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        entityManager.close();
	    }

	    return FavoritesList;
	}
	
	
	public static Favorites selectById(String id) {
		Favorites us = null;
	    EntityManager entityManager = JpaUtils.getEntityManager();

	    try {
	    	us = entityManager.find(Favorites.class, id);
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        entityManager.close();
	    }

	    return us;
	}
	
//	public static List<Favorites> selectByUsername(String username) {
//        List<Favorites> favoritesList = new ArrayList<>();
//        EntityManager entityManager = JpaUtils.getEntityManager();
//
//        try {
//            String jpql = "SELECT f FROM Favorites f WHERE f.Username = :username";
//            TypedQuery<Favorites> query = entityManager.createQuery(jpql, Favorites.class);
//            query.setParameter("username", username);
//            favoritesList = query.getResultList();
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            entityManager.close();
//        }
//
//        return favoritesList;
//    }
	
	public static Favorites selectByUsername_Videos(Users us, Videos vd) {
		Favorites fv = new Favorites();
		EntityManager entityManager = JpaUtils.getEntityManager();
		try {
			String jpql = "SELECT f FROM Favorites f WHERE f.user = :user and f.video =:video";
			TypedQuery<Favorites> query = entityManager.createQuery(jpql, Favorites.class);
			query.setParameter("user", us);
			query.setParameter("video", vd);
			fv = query.getSingleResult();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return fv;
	}
	
	public static void create(Favorites us) {
		EntityManager em = JpaUtils.getEntityManager();

		EntityTransaction trans = em.getTransaction();

		try {
			trans.begin();

			em.persist(us);

			trans.commit();
			System.out.println("thêm thành công");
		} catch (Exception e) {
			System.out.println("thêm thất bại : " + e.getMessage());
			trans.rollback();
		}
	}
	
	
	public static void update(Favorites us) {
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction trans = em.getTransaction();
		System.out.println(us.getFavoriteId());
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
	
	public static void delete(Favorites vd) {
		EntityManager entityManager = JpaUtils.getEntityManager();
	try {
		EntityTransaction tran = entityManager.getTransaction();
		tran.begin();
		Favorites user = entityManager.find(Favorites.class, vd.getFavoriteId());
		if (user == null) {
			   System.out.println("Không Tìm Thấy id");
		}else {
			entityManager.remove(user);
			System.out.println("Xoá Thành Công");
	           tran.commit();
		}
		
	} catch (Exception e) {
		System.out.println(e.getMessage());
		// TODO: handle exception
	}
	}	

	
	public static void main(String[] args) {
//		 List<Favorites>  li = selectAll();
//		for (Favorites item : li) {
//			System.out.println(item.getFavoriteId());
//			System.out.println(item.getUser().getUsername());
//			System.out.println(item.getVideo().getTitle());
//			System.out.println("----------------");
//			
//		}
		
//Favorites us = new Favorites();
//us.setVideo(VideosDao.selectById("mB6fA148HV0"));
//us.setUser(UsersDao.selectById("user6"));
//
//create(us);
		
		
		Users us = UsersDao.selectById("user6");
		Videos vd = VideosDao.selectById("mB6fA148HV0");
		Favorites fv = selectByUsername_Videos(us, vd);
		
		System.out.println(fv.getFavoriteId());
		System.out.println(fv.getUser().getUsername());
		System.out.println(fv.getVideo().getTitle());
		
		delete(fv);

	}
}
