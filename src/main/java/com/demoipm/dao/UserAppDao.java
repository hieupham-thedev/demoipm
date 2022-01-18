package com.demoipm.dao;

import com.demoipm.entities.UserApp;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserAppDao extends JpaRepository<UserApp, Integer>, UserAppCustomDao {

    @Query("SELECT u FROM UserApp u WHERE u.username LIKE :username AND u.isDelete = false")
    UserApp findUsername(@Param(value = "username") String username);

    @Query("SELECT u FROM UserApp u WHERE " +
            "u.fullName LIKE :searchWord OR " +
            "u.phone LIKE :searchWord OR " +
            "u.email LIKE :searchWord OR " +
            "u.username LIKE :searchWord")
    Page<UserApp> fullTextSearchByCondition(@Param(value = "searchWord") String searchWord, Pageable pageable);
}
