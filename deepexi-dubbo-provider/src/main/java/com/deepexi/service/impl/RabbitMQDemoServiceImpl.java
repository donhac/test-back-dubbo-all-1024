package com.deepexi.service.impl;

import com.deepexi.model.dto.MQDemoDTO;
import com.deepexi.service.MQDemoService;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RabbitMQDemoServiceImpl implements MQDemoService {

    @Autowired
    private RabbitTemplate rabbitTemplate;

    @Override
    public void produce(MQDemoDTO dto) {
        rabbitTemplate.convertAndSend("test.queue", dto);
    }

    @Override
    public void consume(MQDemoDTO dto) {
        System.out.println(dto.toString());
    }

}
