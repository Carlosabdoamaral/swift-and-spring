package com.amaralzaao.SwiftAndSpring.Controller;

import com.amaralzaao.SwiftAndSpring.Model.MessageModel;
import com.amaralzaao.SwiftAndSpring.Repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/message")
public class MessageController {

    @Autowired
    MessageRepository _MessageRepository;

    @GetMapping
    public List<MessageModel> simple() {
        return _MessageRepository.findAll();
    }

    @PostMapping
    public HttpStatus send(@RequestBody MessageModel m) {
        try {
            _MessageRepository.save(m);
            return HttpStatus.OK;
        } catch (Error e) {
            return HttpStatus.BAD_REQUEST;
        }
    }

    @DeleteMapping("/{id}")
    public HttpStatus delete(@PathVariable Long id) {
        try {
            _MessageRepository.deleteById(id);
            return HttpStatus.OK;
        } catch (Error err) {
            return HttpStatus.BAD_REQUEST;
        }
    }
}
