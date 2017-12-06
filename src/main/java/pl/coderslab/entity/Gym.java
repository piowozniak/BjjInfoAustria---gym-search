package pl.coderslab.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="gyms")
public class Gym {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotBlank
	private String name;
	
	@ManyToOne
	@JoinColumn(name = "id_style")
	private Style style;
	@NotBlank
	private String headcoach;
	
	@ManyToOne
	@JoinColumn(name = "id_regions")
	private Region region;
	
	@ManyToOne
	@JoinColumn(name = "id_city")
	private City city;
	
	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}
	
	public Region getRegion() {
		return region;
	}

	public void setRegion(Region region) {
		this.region = region;
	}

	private String email;
	@NotBlank
	private String address;
	
	private String tel;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Style getStyle() {
		return style;
	}

	public void setStyle(Style style) {
		this.style = style;
	}

	public String getHeadcoach() {
		return headcoach;
	}

	public void setHeadcoach(String headcoach) {
		this.headcoach = headcoach;
	}



	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	@Override
	public String toString() {
		return "Gym [id=" + id + ", name=" + name + ", style=" + style + ", headcoach=" + headcoach + ", region="
				+ region + ", city=" + city + ", email=" + email + ", address=" + address + ", tel=" + tel + "]";
	}

}
