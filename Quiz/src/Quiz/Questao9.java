/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Quiz;

import ClasseDados.Conexao;
import static ClasseDados.Conexao.con;
import ClasseDados.Pontuacao;
import ClasseDados.usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.scene.control.RadioButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

/**
 *
 * @author gabri
 */
public class Questao9 extends javax.swing.JFrame {
    
    
    JFrame Questao1 = new JFrame ();

    /**
     * Creates new form Questao1
     */
    //Se tiver duvidas consulte os comentarios da questão 1
    int correcao1 = 0;
    int correcao2 = 0;
    int correcao3 = 0;
    int correcao4 = 0;
    int correcao5 = 0;
    int ponto;
    int correcao[] = new int[5];
    public Questao9()  {        
        initComponents();
        usuario u = new usuario();
        lblNick.setText(u.getNick());
        rdngrp1.add(rdbA1);
        rdngrp1.add(rdbA2);
        rdngrp1.add(rdbA3);
        rdngrp1.add(rdbA4);
        rdngrp1.add(rdbA5);
        rdbA1.setSelected(true);
        Conexao c = new Conexao();
        PreparedStatement st,st2;
        ResultSet rs,rs2;
        try{
            c.getConexao(); 
            String alternativa[] = new String[5];
            st2 = (PreparedStatement) con.prepareStatement("SELECT descricao FROM `questoes` where idquestoes = 9;");
            rs2 = st2.executeQuery();
            if(rs2.next()){
                lblDescricaoQ.setText(rs2.getString("descricao"));
            }          
                st = (PreparedStatement) con.prepareStatement("SELECT Qdescricao,correta FROM `alternativas` where idquestoes = 9 ORDER by rand();");
                rs = st.executeQuery();
                int i = 0;
                while(rs.next()){   
                alternativa[i] = (rs.getString("Qdescricao"));
                correcao[i] = (rs.getInt("correta")); 
                i += 1;
                }
                String alternativa1 = alternativa[0];
                rdbA1.setText("<html>a)"+alternativa1);
                correcao1 = correcao[0];


                String alternativa2 = alternativa[1];
                rdbA2.setText("<html>b)"+alternativa2);
                correcao2 = correcao[1];


                String alternativa3 = alternativa[2];
                rdbA3.setText("<html>c)"+alternativa3);
                correcao3 = correcao[2];


                String alternativa4 = alternativa[3];
                rdbA4.setText("<html>d)"+alternativa4);
                correcao4 = correcao[3];


                String alternativa5 = alternativa[4];
                rdbA5.setText("<html>e)"+alternativa5);
                correcao5 = correcao[4];
           
            c.FechaConexao();
        }catch (SQLException ex) {
                Logger.getLogger(Questao9.class.getName()).log(Level.SEVERE, null, ex);
        }           
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        rdngrp1 = new javax.swing.ButtonGroup();
        btnDesistir = new javax.swing.JButton();
        rdbA1 = new javax.swing.JRadioButton();
        rdbA2 = new javax.swing.JRadioButton();
        rdbA3 = new javax.swing.JRadioButton();
        rdbA4 = new javax.swing.JRadioButton();
        rdbA5 = new javax.swing.JRadioButton();
        btnProximo = new javax.swing.JButton();
        jLabel8 = new javax.swing.JLabel();
        lblDescricaoQ = new javax.swing.JLabel();
        lblNick = new javax.swing.JLabel();
        btnDesistir1 = new javax.swing.JButton();

        btnDesistir.setFont(new java.awt.Font("Arial", 1, 18)); // NOI18N
        btnDesistir.setText("Desistir");
        btnDesistir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDesistirActionPerformed(evt);
            }
        });

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);

        rdbA1.setFont(new java.awt.Font("Arial", 0, 17)); // NOI18N
        rdbA1.setText("a)");
        rdbA1.setVerticalAlignment(javax.swing.SwingConstants.TOP);
        rdbA1.setVerticalTextPosition(javax.swing.SwingConstants.TOP);

        rdbA2.setFont(new java.awt.Font("Arial", 0, 17)); // NOI18N
        rdbA2.setText("b)");
        rdbA2.setVerticalAlignment(javax.swing.SwingConstants.TOP);
        rdbA2.setVerticalTextPosition(javax.swing.SwingConstants.TOP);

        rdbA3.setFont(new java.awt.Font("Arial", 0, 17)); // NOI18N
        rdbA3.setText("c)");
        rdbA3.setVerticalAlignment(javax.swing.SwingConstants.TOP);
        rdbA3.setVerticalTextPosition(javax.swing.SwingConstants.TOP);

        rdbA4.setFont(new java.awt.Font("Arial", 0, 17)); // NOI18N
        rdbA4.setText("d)");
        rdbA4.setVerticalAlignment(javax.swing.SwingConstants.TOP);
        rdbA4.setVerticalTextPosition(javax.swing.SwingConstants.TOP);

        rdbA5.setFont(new java.awt.Font("Arial", 0, 17)); // NOI18N
        rdbA5.setText("e)");
        rdbA5.setVerticalAlignment(javax.swing.SwingConstants.TOP);
        rdbA5.setVerticalTextPosition(javax.swing.SwingConstants.TOP);

        btnProximo.setFont(new java.awt.Font("Arial", 1, 18)); // NOI18N
        btnProximo.setText("Próxima");
        btnProximo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnProximoActionPerformed(evt);
            }
        });

        jLabel8.setFont(new java.awt.Font("Tahoma", 3, 18)); // NOI18N
        jLabel8.setText("9)");

        lblDescricaoQ.setFont(new java.awt.Font("Tahoma", 2, 18)); // NOI18N

        lblNick.setText("Nick");

        btnDesistir1.setFont(new java.awt.Font("Arial", 1, 18)); // NOI18N
        btnDesistir1.setText("Desistir");
        btnDesistir1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDesistir1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(rdbA3, javax.swing.GroupLayout.PREFERRED_SIZE, 500, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btnDesistir1)
                        .addGap(292, 292, 292)
                        .addComponent(btnProximo))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 29, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(lblDescricaoQ, javax.swing.GroupLayout.PREFERRED_SIZE, 900, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(18, 18, 18)
                            .addComponent(lblNick))
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(rdbA2, javax.swing.GroupLayout.PREFERRED_SIZE, 500, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                            .addComponent(rdbA5, javax.swing.GroupLayout.PREFERRED_SIZE, 500, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(rdbA1, javax.swing.GroupLayout.PREFERRED_SIZE, 500, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(rdbA4, javax.swing.GroupLayout.PREFERRED_SIZE, 500, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(16, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(22, 22, 22)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel8)
                    .addComponent(lblNick)
                    .addComponent(lblDescricaoQ, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(rdbA1, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(rdbA2, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(rdbA4, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(rdbA5, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(rdbA3, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(btnProximo)
                        .addComponent(btnDesistir1)))
                .addContainerGap())
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btnProximoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnProximoActionPerformed
        // TODO add your handling code here: 
          if(rdbA1.isSelected() == true){
            ponto =  correcao1;
            Pontuacao.setPontos(ponto);
            }
        if(rdbA2.isSelected() == true){
            ponto =  correcao2;
            Pontuacao.setPontos(ponto);
            }
        if(rdbA3.isSelected() == true){
            ponto =  correcao3;
            Pontuacao.setPontos(ponto);
            }
        if(rdbA4.isSelected() == true){
            ponto =  correcao4;
            Pontuacao.setPontos(ponto);
            }
        if(rdbA5.isSelected() == true){
            ponto =  correcao5;
            Pontuacao.setPontos(ponto);
            }
        this.dispose();
        new Questao10().setVisible(true);
    }//GEN-LAST:event_btnProximoActionPerformed

    private void btnDesistirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDesistirActionPerformed
        // TODO add your handling code here:
        Conexao dadosBD = new Conexao();
        usuario u = new usuario();
        try {
            dadosBD.getConexao();
            com.mysql.jdbc.PreparedStatement st;
            ResultSet rs;
            st = (com.mysql.jdbc.PreparedStatement) con.prepareStatement("select tipo from usuario where nickname='"+u.getNick()+"'");
            rs = st.executeQuery();
            while(rs.next()){
                if(rs.getString("tipo").equals("1")){
                    Pontuacao.zerapontos();
                    this.dispose();
                    new PrincipalA().setVisible(true);
                }else if(rs.getString("tipo").equals("2")){
                    Pontuacao.zerapontos();
                    this.dispose();
                    new PrincipalJ().setVisible(true);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(Questao9.class.getName()).log(Level.SEVERE, null, ex);
        }
        dadosBD.FechaConexao();
    }//GEN-LAST:event_btnDesistirActionPerformed

    private void btnDesistir1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDesistir1ActionPerformed
        // TODO add your handling code here:
        Conexao dadosBD = new Conexao();
        usuario u = new usuario();
        try {
            dadosBD.getConexao();
            com.mysql.jdbc.PreparedStatement st;
            ResultSet rs;
            st = (com.mysql.jdbc.PreparedStatement) con.prepareStatement("select tipo from usuario where nickname='"+u.getNick()+"'");
            rs = st.executeQuery();
            while(rs.next()){
                if(rs.getString("tipo").equals("1")){
                    this.dispose();
                    new PrincipalA().setVisible(true);
                }else if(rs.getString("tipo").equals("2")){
                    this.dispose();
                    new PrincipalJ().setVisible(true);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(VRanking.class.getName()).log(Level.SEVERE, null, ex);
        }
        dadosBD.FechaConexao();
    }//GEN-LAST:event_btnDesistir1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Questao9.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Questao9.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Questao9.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Questao9.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                    new Questao9().setVisible(true);   
                
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnDesistir;
    private javax.swing.JButton btnDesistir1;
    private javax.swing.JButton btnProximo;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel lblDescricaoQ;
    private javax.swing.JLabel lblNick;
    private javax.swing.JRadioButton rdbA1;
    private javax.swing.JRadioButton rdbA2;
    private javax.swing.JRadioButton rdbA3;
    private javax.swing.JRadioButton rdbA4;
    private javax.swing.JRadioButton rdbA5;
    private javax.swing.ButtonGroup rdngrp1;
    // End of variables declaration//GEN-END:variables

  
}
