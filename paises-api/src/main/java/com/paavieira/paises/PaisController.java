package com.paavieira.paises;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PaisController {

  private final Logger LOG = LoggerFactory.getLogger(getClass());
  
  private PaisService paisService;

  public PaisController(PaisService paisService) {
    this.paisService = paisService;
  }

  @GetMapping("/paises")
  @ResponseBody
  @Cacheable(value = "paises")
  public Iterable<Pais> findAll() {
    LOG.info("Getting all \"paises\".");
    return this.paisService.findAll();
  }

}