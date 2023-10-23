package model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name = "Shares")

public class Shares2222 {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private String ShareId;
	@Column
	private String Username;
	@Column
	private String VideoId;
	@Column
	private String Emails;
	@Column
	private Date SharedDate;
	
	
	public Shares2222() {
		super();
	}
	
	
	public Shares2222( String username, String videoId, String emails, Date sharedDate) {
		super();
		
		Username = username;
		VideoId = videoId;
		Emails = emails;
		SharedDate = sharedDate;
	}
	public Shares2222(String shareId, String username, String videoId, String emails, Date sharedDate) {
		super();
		ShareId = shareId;
		Username = username;
		VideoId = videoId;
		Emails = emails;
		SharedDate = sharedDate;
	}
	public String getShareId() {
		return ShareId;
	}
	public void setShareId(String shareId) {
		ShareId = shareId;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getVideoId() {
		return VideoId;
	}
	public void setVideoId(String videoId) {
		VideoId = videoId;
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
