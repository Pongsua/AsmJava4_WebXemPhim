package model;

//import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.StoredProcedureParameter;
@NamedStoredProcedureQueries({
		@NamedStoredProcedureQuery(name = "Report.favoriteByYear", procedureName = "spFavoriteByYear", parameters = {
				@StoredProcedureParameter(name = "year", type = Integer.class) }, resultClasses = { Report.class }) })

@Entity
public class Report {
	@Id
	private String groupTitle;
	private Long likes;
	private Date newest;
	private Date oldest;
	public Report() {
		super();
	}
	public Report(String groupTitle, Long likes, Date newest, Date oldest) {
		super();
		this.groupTitle = groupTitle;
		this.likes = likes;
		this.newest = newest;
		this.oldest = oldest;
	}
	public String getgroupTitle() {
		return groupTitle;
	}
	public void setgroupTitle(String groupTitle) {
		this.groupTitle = groupTitle;
	}
	public Long getLikes() {
		return likes;
	}
	public void setLikes(Long likes) {
		this.likes = likes;
	}
	public Date getNewest() {
		return newest;
	}
	public void setNewest(Date newest) {
		this.newest = newest;
	}
	public Date getOldest() {
		return oldest;
	}
	public void setOldest(Date oldest) {
		this.oldest = oldest;
	}
	
	
}
