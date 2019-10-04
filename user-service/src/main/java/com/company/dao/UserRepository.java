package com.company.dao;

import com.company.domain.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository {
    /**
     * 用户注册
     * @param user
     * @return
     */
    public Long register(User user);

    /**
     *插入用户角色
     * @param uid
     */
    public void insertUser_Role(Long uid);

    /**
     * 是否存在用户
     * @param username
     * @return
     */
    public int isExistUsername(String username);

    /**
     * 判断电话是否已经注册
     * @param phone
     * @return
     */
    public int isExistPhone(String phone);

    /**
     * 邮箱是否已经注册
     * @param email
     * @return
     */
    public int isExistEmail(String email);

}
