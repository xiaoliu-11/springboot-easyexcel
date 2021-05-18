package com.xmaven.service;

import com.github.pagehelper.PageInfo;
import com.xmaven.entity.SysUser;

import java.util.List;

/**
 * @author Sanji
 */
public interface SysUserService {
    List<SysUser> getAll();

    PageInfo<SysUser> selectpage(Integer pageNum, Integer pageSize);

    void saveList(List<SysUser> list);
}
