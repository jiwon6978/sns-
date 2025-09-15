package com.example.demo.Domain.User.Repository;


import com.example.demo.Domain.User.Entity.SnsEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SnsRepository extends JpaRepository<SnsEntity,Long> {

}
