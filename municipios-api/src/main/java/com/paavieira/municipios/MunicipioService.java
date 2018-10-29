package com.paavieira.municipios;

import org.springframework.stereotype.Service;

@Service
public class MunicipioService {

  private MunicipioRepository municipioRepository;

  public MunicipioService(MunicipioRepository municipioRepository) {
    this.municipioRepository = municipioRepository;
  }

  public Iterable<Municipio> findAll() {
    return this.municipioRepository.findAll();
  }

}