package com.example.demo.Controller;


import com.example.demo.Domain.User.Dto.JoinDto;
import com.example.demo.Domain.User.Service.SnsService;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Slf4j
@RequestMapping("/sns")
public class SnsController {

    @Autowired
    private SnsService snsService;

    @GetMapping("/join")
    public void add_join_get()throws Exception{
        log.info("GET /sns/join");
    }

    @PostMapping("/join")
    public String add_join_post(@Valid JoinDto dto, BindingResult bindingResult, Model model, RedirectAttributes redirectAttributes) throws Exception
    {
        log.info("POST / sns/join"+dto);

        //유효성검증
        log.info("유효성 오류 발생여부 : " + bindingResult.hasErrors());
        if(bindingResult.hasErrors()){
            for(FieldError error : bindingResult.getFieldErrors()){
                log.info("Error Field :"+error.getField()+"Error Message :"+error.getDefaultMessage());
                model.addAttribute(error.getField(),error.getDefaultMessage());
            }
            return "sns/join";
        }

        //서비스 요청
        Long insertedId = snsService.joinRegistration(dto);
        if(insertedId!=null){
            redirectAttributes.addFlashAttribute("message","회원가입완료!");
        }

        //뷰로 이동
        return insertedId!=null ? "redirect:/": "sns/join";
    }
}
