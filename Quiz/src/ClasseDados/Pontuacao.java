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
public class Pontuacao {
    //Declara uma variável static para poder ser usada em qualquer tela das questões
    public static int pontos;

    public static int getPontos() {
        return pontos;
    }
    // o + soma os pontos que vão chegando como os que já estão lá
    public static void setPontos(int pontos) {
        Pontuacao.pontos += pontos;
    }
    //Método que zera os pontos usado para quando o jogador ou Adm terminar de responder ou desistir de finalizar o quiz
    public static void zerapontos(){
        pontos = 0;
    }
    
}
