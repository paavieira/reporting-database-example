package com.paavieira.ufs;

import org.springframework.stereotype.Service;

@Service
public class UnidadeFederativaService {

  private UnidadeFederativaRepository unidadeFederativaRepository;

  public UnidadeFederativaService(UnidadeFederativaRepository unidadeFederativaRepository) {
    this.unidadeFederativaRepository = unidadeFederativaRepository;
  }

  public Iterable<UnidadeFederativa> findAll() {
    return this.unidadeFederativaRepository.findAll();
  }

}