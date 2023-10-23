package model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "Favorites", uniqueConstraints={
		@UniqueConstraint(columnNames = {"VideoId" , "Username"})
		})
public class Favorites {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // tăng 1 1
	private int FavoriteId;
	

	@ManyToOne @JoinColumn(name = "Username")
	private Users user;
	
	

	@ManyToOne @JoinColumn(name = "VideoId")
	private Videos video;
	
	@Column
	@Temporal(TemporalType.DATE)
	private Date LikedDate;
	
	
	
	public Favorites() {
		super();
	}




	public Favorites(int favoriteId, Users user, Videos video, Date likedDate) {
		super();
		FavoriteId = favoriteId;
		this.user = user;
		this.video = video;
		LikedDate = likedDate;
	}



	public int getFavoriteId() {
		return FavoriteId;
	}




	public void setFavoriteId(int favoriteId) {
		FavoriteId = favoriteId;
	}




	public Users getUser() {
		return user;
	}




	public void setUser(Users user) {
		this.user = user;
	}




	public Videos getVideo() {
		return video;
	}




	public void setVideo(Videos video) {
		this.video = video;
	}




	public Date getLikedDate() {
		return LikedDate;
	}


	public void setLikedDate(Date likedDate) {
		LikedDate = likedDate;
	}
	
	
}
