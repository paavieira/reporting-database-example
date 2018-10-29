package com.paavieira.municipios;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "municipios", schema = "public")
public class Municipio implements Serializable {

  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "muni_cd")
  private Short id;

  @Column(name = "muni_nm")
  private String nome;

  @Column(name = "muni_uf_sg")
  private String siglaUf;

  protected Municipio() {
  }

  /**
   * @return the id
   */
  public Short getId() {
    return id;
  }

  /**
   * @param id the id to set
   */
  public void setId(Short id) {
    this.id = id;
  }

  /**
   * @return the nome
   */
  public String getNome() {
    return nome;
  }

  /**
   * @param nome the nome to set
   */
  public void setNome(String nome) {
    this.nome = nome;
  }

  /**
   * @return the siglaUf
   */
  public String getSiglaUf() {
    return siglaUf;
  }

  /**
   * @param siglaUf the siglaUf to set
   */
  public void setSiglaUf(String siglaUf) {
    this.siglaUf = siglaUf;
  }

}