package com.paavieira.municipios;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MunicipioController {

  private final Logger LOG = LoggerFactory.getLogger(getClass());
  
  private MunicipioService municipioService;

  public MunicipioController(MunicipioService municipioService) {
    this.municipioService = municipioService;
  }

  @GetMapping("/municipios")
  @ResponseBody
  public Iterable<Municipio> findAll() {
    LOG.info("Getting all \"municipios\".");
    return this.municipioService.findAll();
  }

}