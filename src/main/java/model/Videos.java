package model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@NamedQueries({
	@NamedQuery(name = "Videos.findByKeyword", query = "SELECT DISTINCT o.video FROM Favorites o WHERE o.video.Title LIKE :keyword"),
	@NamedQuery(name = "Videos.findByUser", query = "SELECT o.video FROM Favorites o WHERE o.user.Username = :username"),
	@NamedQuery(name = "Videos.findInMonths", query = "SELECT DISTINCT o FROM Favorites o WHERE month(o.LikedDate) IN (:months)"),
	@NamedQuery(name = "Videos.findInRange", query = "SELECT DISTINCT o FROM Favorites o WHERE o.LikedDate BETWEEN :min AND :max")

 })
@NamedNativeQueries({
		@NamedNativeQuery(name = "Report.random10", 
				query = "SELECT TOP 7 * FROM Videos ORDER BY newid()", resultClass = Videos.class) })

@Entity
@Table(name = "Videos")

public class Videos {
	@Id
	@Column
	private String VideoId;
	@Column
	private String Title;
	@Column
	private String Poster;
	@Column
	private int Views;
	@Column
	private String Decscription;
	@Column
	private boolean Active;
	
	@OneToMany(mappedBy = "video")
	List<Favorites> favorites ;
	
	@OneToMany(mappedBy = "video")
	List<Shares> shares ;
	

	public List<Favorites> getFavorites() {
		return favorites;
	}
	public void setFavorites(List<Favorites> favorites) {
		this.favorites = favorites;
	}
	public Videos() {
		super();
	}
	public Videos(String videoId, String title, String poster, int views, String decscription, boolean active) {
		super();
		VideoId = videoId;
		Title = title;
		Poster = poster;
		Views = views;
		Decscription = decscription;
		Active = active;
	}
	
	
	
	public Videos(String videoId, String title, String poster, int views, String decscription, boolean active,
			List<Favorites> favorites) {
		super();
		VideoId = videoId;
		Title = title;
		Poster = poster;
		Views = views;
		Decscription = decscription;
		Active = active;
		this.favorites = favorites;
	}
	public String getVideoId() {
		return VideoId;
	}
	public void setVideoId(String videoId) {
		VideoId = videoId;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getPoster() {
		return Poster;
	}
	public void setPoster(String poster) {
		Poster = poster;
	}
	public int getViews() {
		return Views;
	}
	public void setViews(int views) {
		Views = views;
	}
	public String getDecscription() {
		return Decscription;
	}
	public void setDecscription(String decscription) {
		Decscription = decscription;
	}
	public boolean isActive() {
		return Active;
	}
	public void setActive(boolean active) {
		Active = active;
	}
	
	
	
}
