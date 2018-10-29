package com.paavieira.paises;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "paises", schema = "public")
public class Pais implements Serializable {

  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "pais_cd")
  private Short id;

  @Column(name = "pais_nm")
  private String nome;

  protected Pais() {
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

}