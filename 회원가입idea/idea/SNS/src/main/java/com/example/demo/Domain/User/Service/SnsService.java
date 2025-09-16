package com.example.demo.Domain.User.Service;


import com.example.demo.Domain.User.Dao.JoinDao;
import com.example.demo.Domain.User.Dto.JoinDto;
import com.example.demo.Domain.User.Entity.SnsEntity;
import com.example.demo.Domain.User.Repository.SnsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SnsService {

    @Autowired
    private JoinDao dao;

    @Autowired
    private SnsRepository snsRepository;

    public Long joinRegistration(JoinDto dto) throws Exception {
        //dto ->Entity
        SnsEntity sns = SnsEntity.builder()
                .id(null)
                .email(dto.getEmail())
                .username(dto.getUsername())
                .password(dto.getPassword())
                .phonenumber(dto.getPhonenumber())
                .build();
        snsRepository.save(sns);
        return sns.getId();
    }


}
