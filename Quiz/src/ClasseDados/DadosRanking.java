/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClasseDados;

/**
 *
 * @author Roberto
 */
public class DadosRanking{
    //Declara e encapsula os dados que serão usados para gerar o ranking
    protected int idpontuacao;
    protected int idusuario;
    protected int pontos;
    protected String data;

    public int getIdpontuacao() {
        return idpontuacao;
    }

    public void setIdpontuacao(int idpontuacao) {
        this.idpontuacao = idpontuacao;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public int getPontos() {
        return pontos;
    }

    public void setPontos(int pontos) {
        this.pontos = pontos;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }
   
    
    
    
}
