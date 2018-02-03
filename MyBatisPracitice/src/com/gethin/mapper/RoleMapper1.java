package com.gethin.mapper;

import org.apache.ibatis.annotations.Select;

import com.gethin.po.Role;

public interface RoleMapper1 {
	
@Select(value="select id ,role_name as roleName,note from role where id=#{id}")
public Role getRole(Long id);
}
