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
public class usuario {
    //Declara e encapsula as variáveis com os dados do usuario é utilizada em quase todas as telas 
    //exceto na tela de login e de cadastro de jogadores
    static String nick;
    static String nome;
    static String senha;
    static String tipo;

    public static String getNick() {
        return nick;
    }

    public static void setNick(String nick) {
        usuario.nick = nick;
    }

    public static String getNome() {
        return nome;
    }

    public static void setNome(String nome) {
        usuario.nome = nome;
    }

    public static String getSenha() {
        return senha;
    }

    public static void setSenha(String senha) {
        usuario.senha = senha;
    }

    public static String getTipo() {
        return tipo;
    }

    public static void setTipo(String tipo) {
        usuario.tipo = tipo;
    }
}
