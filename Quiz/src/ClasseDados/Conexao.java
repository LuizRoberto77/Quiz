/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClasseDados;

import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


/**
 *
 * @author Roberto
 */
public class Conexao {
        //Status da conexão, para consultas
      private static String statusConexao = "Não conectado";

      public Conexao() {    } //Possibilita instancias
      public static Connection con = null;
 
      public static Connection getConexao() {      
      System.out.println("Conectando ao banco...");
      try {
      Class.forName("com.mysql.jdbc.Driver");
      con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","");
        if (con != null) {   //Se aconexão for ok, ela não é nula...
                //Troca o status da conexão
                statusConexao = ("Conectado");
                System.out.println(statusConexao);
            } else {
                statusConexao = ("Não conectado");
                System.out.println(statusConexao);
            }
            //retorna a conexão para quem for utiliza-la
            return con;
            } catch (ClassNotFoundException e) {  //Caso não encontre o driver de conexão
            System.out.println("Driver de conexão não encontrado    ");
            return null;
        } catch (SQLException e) { //Caso não consiga conectar
            System.out.println("Falha na conexão: ");
            System.out.println(e.getMessage());
            return null;
        }
      
    }
    public boolean FechaConexao() {
        try {
            getConexao().close(); //Fecha
            statusConexao = "Conexão fechada"; //Atualiza o status
            System.out.println(statusConexao);
            return true; //Retorna verdadeiro = conseguiu fechar!
        } catch (SQLException e) {
            //Se der algum erro, imprime
            System.out.println(e.getMessage());
            return false;
        }
    }
 
    //caso precise reiniciar sua conexão
    public Connection ReiniciaConexao() {
        FechaConexao(); //Fecha
        return getConexao(); //Abre e retorna
    }
   
}
