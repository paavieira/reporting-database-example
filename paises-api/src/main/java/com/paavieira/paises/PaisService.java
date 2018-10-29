package com.paavieira.paises;

import org.springframework.stereotype.Service;

@Service
public class PaisService {

  private PaisRepository paisRepository;

  public PaisService(PaisRepository paisRepository) {
    this.paisRepository = paisRepository;
  }

  public Iterable<Pais> findAll() {
    return this.paisRepository.findAll();
  }

}