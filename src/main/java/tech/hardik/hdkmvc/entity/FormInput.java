package tech.hardik.hdkmvc.entity;

import javax.validation.constraints.NotNull;

/**
 * @author hpatel2
 *
 */

public class FormInput {
	@NotNull
	private String env;
	@NotNull
	private String cobGroup;
	@NotNull
	private String cobName;
	@NotNull
	private String vip;
	
	public String getEnv() {
		return env;
	}
	public void setEnv(String env) {
		this.env = env;
	}
	public String getCobGroup() {
		return cobGroup;
	}
	public void setCobGroup(String cobGroup) {
		this.cobGroup = cobGroup;
	}
	public String getCobName() {
		return cobName;
	}
	public void setCobName(String cobName) {
		this.cobName = cobName;
	}
	public String getVip() {
		return vip;
	}
	public void setVip(String vip) {
		this.vip = vip;
	}	
}
