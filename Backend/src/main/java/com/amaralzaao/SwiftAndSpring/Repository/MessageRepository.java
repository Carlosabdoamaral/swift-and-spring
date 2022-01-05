package com.amaralzaao.SwiftAndSpring.Repository;

import com.amaralzaao.SwiftAndSpring.Model.MessageModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MessageRepository extends JpaRepository<MessageModel, Long> {
}
