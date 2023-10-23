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

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name = "Shares")

public class Shares {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private String ShareId;
	

	@ManyToOne @JoinColumn(name = "VideoId")
	private Videos video;
	
	@ManyToOne @JoinColumn(name = "Username")
	private Users user;
	
	@Column
	private String Emails;
	@Column
	@Temporal(TemporalType.DATE)
	private Date SharedDate;
	
	
	public Shares() {
		super();
	}


	public Shares(String shareId, Users user, Videos video, String emails, Date sharedDate) {
		super();
		ShareId = shareId;
		this.user = user;
		this.video = video;
		Emails = emails;
		SharedDate = sharedDate;
	}
	public Shares( Users user, Videos video, String emails, Date sharedDate) {
		super();
		this.user = user;
		this.video = video;
		Emails = emails;
		SharedDate = sharedDate;
	}


	public String getShareId() {
		return ShareId;
	}


	public void setShareId(String shareId) {
		ShareId = shareId;
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


	public String getEmails() {
		return Emails;
	}


	public void setEmails(String emails) {
		Emails = emails;
	}


	public Date getSharedDate() {
		return SharedDate;
	}


	public void setSharedDate(Date sharedDate) {
		SharedDate = sharedDate;
	}



	
	
	
}
