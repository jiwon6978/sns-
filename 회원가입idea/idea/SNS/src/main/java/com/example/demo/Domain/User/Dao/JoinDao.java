package com.example.demo.Domain.User.Dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.SQLException;

@Repository
public class JoinDao {

    @Autowired
    private DataSource dataSource;

//    public int insert (JoinDto dto) throws SQLException {}
}
