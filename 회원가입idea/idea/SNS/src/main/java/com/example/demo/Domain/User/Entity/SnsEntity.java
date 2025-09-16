package com.example.demo.Domain.User.Entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.*;

@Entity
@Table(name = "users")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SnsEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Column(length = 100)
    private String phonenumber;

    @NotBlank
    private String password;

    @Email(message = "example@example.com 형식으로 작성해주세요.")
    @Column(length = 255, nullable = false)
    private String email;

    @NotBlank
    private String username;
}
