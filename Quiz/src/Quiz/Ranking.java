/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Quiz;
import java.util.Scanner;
import ClasseDados.DadosRanking;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Roberto
 */
public class Ranking {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException{
        // TODO code application logic here
        new Login().setVisible(true);
        //Cria uma instância de CarrosDAO na memória
        /*System.out.println("Digite 1 para cadastrar e 2 para visualizar a ranking:");
        String x = sc.nextLine();
        if(x.equals("1")){
        System.out.println("Digite seu nome:");
        d.setNome(sc.nextLine());
        System.out.println("Digite sua senha:");
        d.setSenha(sc.nextLine());
        System.out.println("Digite sua Pontuação:");
        d.setPontuacao(sc.nextInt());
        
        rankingDAO dadosBD = new rankingDAO();
        boolean cad = dadosBD.irank(d);
        if(cad == true){
            System.out.println("jogador "+d.getNome()+" Cadastado com sucesso");
        }else{
            System.out.println("Nome ou senha invalidos");
        }
        
        }else if(x.equals("2")){
        listaRank();
        }else{
         System.out.println("Comando invalido");   
            
         }
    
        try {
            Conexaotxt.con.close();
        } catch (SQLException ex) {
            Logger.getLogger(TesteJFrame.class.getName()).log(Level.SEVERE, null, ex);
        }
                 
    }
 
    //Método de listagem de todos os carros
    public static void listaRank() {
 
        //Cria uma instância de CarrosDAO na memória
        rankingDAO dadosBD = new rankingDAO();
 
        //Cria a lista de carros local, que será preenchida
        List<Dados> Rank = new ArrayList<Dados>();
 
        //Obtém a lista de carros através do objeto
        Rank = dadosBD.getRank();
 
        //Começa a imprimir os dados
        System.out.println("Rank-\t|\tNome\t|\tSenha\t|\tPontuação");
        System.out.println("------\t|\t--------------\t|\t-----\t|\t---------");
        for (Dados DadosLocal : Rank) { //Iterator: Para cada carro na list de carros...
            System.out.print(DadosLocal.getColocaçoes() + "\t|\t");
            System.out.print(DadosLocal.getNome() + "\t|\t");
            System.out.print(DadosLocal.getSenha()+ "\t|\t");
            System.out.print(DadosLocal.getPontuacao()+ "\t|\t");
            System.out.println();
        }*/
    }
  }          
    

