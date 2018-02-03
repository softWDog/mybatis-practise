package com.gethin.mapper;

import com.gethin.po.Role;

public interface RoleMapper {
	public Role getRole(Long id);
	public int deleteRole(Long id);
	public int insertRole(Role role);
}
