package com.paavieira.ufs;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ufs", schema = "public")
public class UnidadeFederativa implements Serializable {

  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "uf_sg")
  private String id;

  @Column(name = "uf_nm")
  private String nome;

  protected UnidadeFederativa() {
  }

  /**
   * @return the id
   */
  public String getId() {
    return id;
  }

  /**
   * @param id the id to set
   */
  public void setId(String id) {
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