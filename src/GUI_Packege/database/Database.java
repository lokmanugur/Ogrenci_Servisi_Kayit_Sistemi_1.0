/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI_Packege.database;

import ReadWritexml.readXML;
import StudentServiceClass.DbConnection;
import java.io.FileNotFoundException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Administrator
 */

public class Database extends javax.swing.JInternalFrame {
  DbConnection databs;
  readXML readxml = new readXML();
    public Database(DbConnection databs) {
       this.databs=databs;
       initComponents();
       setLocation(getWidth()/2,getHeight()/10);
       getReadXml();
       //defaultxml();
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        sunucuAdresi = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        port = new javax.swing.JTextField();
        database = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        kulaniciAdi = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        sifre = new javax.swing.JPasswordField();
        kaydet = new javax.swing.JButton();
        varsayilan = new javax.swing.JButton();
        verial = new javax.swing.JButton();

        setBorder(null);
        setClosable(true);
        setDefaultCloseOperation(javax.swing.WindowConstants.HIDE_ON_CLOSE);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("Database");

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Database Bağlantı Ayarları"));

        jLabel1.setText("Sunucu Adresi:");

        jLabel2.setText("Port:");

        jLabel3.setText("Database Adı:");

        jLabel4.setText("Kulanıcı Adı:");

        jLabel5.setText("Şifre:");

        kaydet.setText("Kaydet");
        kaydet.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                kaydetActionPerformed(evt);
            }
        });

        varsayilan.setText("Varsayılan");
        varsayilan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                varsayilanActionPerformed(evt);
            }
        });

        verial.setText("Veri Al");
        verial.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                verialActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1)
                    .addComponent(jLabel2, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel3, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel4, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel5, javax.swing.GroupLayout.Alignment.TRAILING))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(port, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(sifre, javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(kulaniciAdi, javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(database, javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(sunucuAdresi)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(0, 0, Short.MAX_VALUE)
                                .addComponent(verial)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(varsayilan)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(kaydet)))
                        .addGap(40, 40, 40))))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1)
                    .addComponent(sunucuAdresi, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(1, 1, 1)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(port, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(1, 1, 1)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(database, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(1, 1, 1)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(kulaniciAdi, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(1, 1, 1)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(sifre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 11, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(kaydet)
                    .addComponent(varsayilan)
                    .addComponent(verial))
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void kaydetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kaydetActionPerformed
        defaultxml(); // TODO add your handling code here:
    }//GEN-LAST:event_kaydetActionPerformed

    private void varsayilanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_varsayilanActionPerformed
       getVarsayilan(); // TODO add your handling code here:
    }//GEN-LAST:event_varsayilanActionPerformed

    private void verialActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_verialActionPerformed
     getReadXml();  // TODO add your handling code here:
    }//GEN-LAST:event_verialActionPerformed

    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JTextField database;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JButton kaydet;
    public javax.swing.JTextField kulaniciAdi;
    public javax.swing.JTextField port;
    public javax.swing.JPasswordField sifre;
    public javax.swing.JTextField sunucuAdresi;
    private javax.swing.JButton varsayilan;
    private javax.swing.JButton verial;
    // End of variables declaration//GEN-END:variables
private void getVarsayilan(){
       sunucuAdresi.setText("localhost");
       port.setText("3306");
       database.setText("student_service");
       kulaniciAdi.setText("root");
       sifre.setText("");
}
private void getReadXml(){
     readxml.readXML("server.xml");
       if(!readxml.rolev.isEmpty()){
     sunucuAdresi.setText(readxml.rolev.get(0));
       if(!readxml.rolev.get(0).isEmpty())
     port.setText(readxml.rolev.get(1));
       if(!readxml.rolev.get(1).isEmpty())
     database.setText(readxml.rolev.get(2));
       if(!readxml.rolev.get(2).isEmpty())
     kulaniciAdi.setText(readxml.rolev.get(3));
       if(!readxml.rolev.get(3).isEmpty()){
     sifre.setText(readxml.rolev.get(4)); }
     }
     }
private void getSaveXml(){
    readxml.serverAdress = sunucuAdresi.getText();
    readxml.port = port.getText();
    readxml.databaseName = database.getText();
    readxml.userName = kulaniciAdi.getText();
    readxml.password = sifre.getText();
      try { 
          readxml.saveToXML("server.xml");
      } catch (FileNotFoundException ex) {
          Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
      }
    }
private void defaultxml(){
    getSaveXml();
    databs.setSunucu(sunucuAdresi.getText());
    databs.setPort(port.getText());
    databs.setDatabaseAdi(database.getText());
    databs.setUsername(kulaniciAdi.getText());
    databs.setPassword(sifre.getText());
    }
}