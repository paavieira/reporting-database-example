package com.paavieira.ufs;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UnidadeFederativaController {

  private final Logger LOG = LoggerFactory.getLogger(getClass());
  
  private UnidadeFederativaService unidadeFederativaService;

  public UnidadeFederativaController(UnidadeFederativaService unidadeFederativaService) {
    this.unidadeFederativaService = unidadeFederativaService;
  }

  @GetMapping("/ufs")
  @ResponseBody
  public Iterable<UnidadeFederativa> findAll() {
    LOG.info("Getting all \"ufs\".");
    return this.unidadeFederativaService.findAll();
  }

}