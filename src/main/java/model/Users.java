package model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Users")

public class Users {
	@Id
	@Column
	private String Username	;
	@Column
	private String Fullname;
	@Column
	private String Email;
	@Column
	private boolean Admin;
	@Column
	private String Passwords;
	
	@OneToMany(mappedBy = "user")
	List<Favorites> favorites ;
	
	@OneToMany(mappedBy = "user")
	List<Shares> shares ;
	
	
	public Users() {
		super();
	}
	public Users(String username, String fullname, String email, boolean admin, String passwords) {
		super();
		Username = username;
		Fullname = fullname;
		Email = email;
		Admin = admin;
		Passwords = passwords;
	}
	
	
	public Users(String username, String fullname, String email, boolean admin, String passwords,
			List<Favorites> favorites) {
		super();
		Username = username;
		Fullname = fullname;
		Email = email;
		Admin = admin;
		Passwords = passwords;
		this.favorites = favorites;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getFullname() {
		return Fullname;
	}
	public void setFullname(String fullname) {
		Fullname = fullname;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public boolean isAdmin() {
		return Admin;
	}
	public void setAdmin(boolean admin) {
		Admin = admin;
	}
	public String getPasswords() {
		return Passwords;
	}
	public void setPasswords(String passwords) {
		Passwords = passwords;
	}

	
	
	public List<Favorites> getFavorites() {
		return favorites;
	}
	public void setFavorites(List<Favorites> favorites) {
		this.favorites = favorites;
	}


	
	
}
