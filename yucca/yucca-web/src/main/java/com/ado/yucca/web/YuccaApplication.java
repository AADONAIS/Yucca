package com.ado.yucca.web;

import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@Slf4j
@SpringBootApplication
public class YuccaApplication {

    private static final Logger log = LoggerFactory.getLogger(YuccaApplication.class) ;

    private static final String MODULE_NAME = "YuccaApplication" ;

    private static final String MODULE_ACTION = "this application started ..." ;

    public static void main(String[] args) {
        log.info("[{}] : [{}]" , MODULE_NAME , MODULE_ACTION);
        SpringApplication.run(YuccaApplication.class , args) ;
    }
}
