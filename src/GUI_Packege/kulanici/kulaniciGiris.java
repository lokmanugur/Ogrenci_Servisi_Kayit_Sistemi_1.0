/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package GUI_Packege.kulanici;

import GUI_Packege.Main_Frame;
import GUI_Packege.kasa.KasaGoster;
import StudentServiceClass.AESencrp;
import StudentServiceClass.DbConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
/**
 *
 * @author BLUE
 */
public class kulaniciGiris extends javax.swing.JFrame {
    /**
     * Creates new form userEntance
     */
   
   private static String login_name;
   private static String usr_no;
   private String psswrd;
    DbConnection databs=new DbConnection();
    public kulaniciGiris() throws Exception {
        setUndecorated(true);
        initComponents();
        loginame.setText("blue");
        userpasword.setText("123456");
        
        /* databs.openDatabase();
        String urunTable = "SELECT * FROM menu";
        try {
        databs.s.execute(urunTable);
        ResultSet rsurun = databs.s.getResultSet();
        while((rsurun!=null) && (rsurun.next()))
        {
        System.out.println(AESencrp.decrypt(rsurun.getString("login_name")));
        System.out.println(AESencrp.decrypt(rsurun.getString("password")));
        }
        } catch (SQLException ex) {
        Logger.getLogger(UrunDuzenleSil.class.getName()).log(Level.SEVERE, null, ex);
        }
        databs.closeDatabase();*/
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        infolabel = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        userpasword = new javax.swing.JPasswordField();
        jLabel1 = new javax.swing.JLabel();
        iptal = new javax.swing.JButton();
        loginame = new javax.swing.JTextField();
        giris = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBounds(java.awt.Toolkit.getDefaultToolkit().getScreenSize().width/3,java.awt.Toolkit.getDefaultToolkit().getScreenSize().height/4,0,0);
        addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                formKeyReleased(evt);
            }
        });

        infolabel.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        infolabel.setForeground(new java.awt.Color(153, 0, 0));
        infolabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        jPanel1.setBackground(new java.awt.Color(204, 204, 204));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder("Kulanıcı Girişi"));

        jLabel2.setText("Kulanıcı Şifresi:");

        userpasword.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                userpaswordKeyReleased(evt);
            }
        });

        jLabel1.setText("Kulanıcı Adı:");

        iptal.setText("İptal");
        iptal.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                iptalActionPerformed(evt);
            }
        });

        loginame.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                loginameKeyReleased(evt);
            }
        });

        giris.setText("Giriş");
        giris.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                girisActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(giris, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(iptal, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel1)
                            .addComponent(jLabel2))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(userpasword)
                            .addComponent(loginame, javax.swing.GroupLayout.PREFERRED_SIZE, 157, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(loginame, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(userpasword, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(iptal)
                    .addComponent(giris))
                .addContainerGap(21, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(infolabel, javax.swing.GroupLayout.DEFAULT_SIZE, 288, Short.MAX_VALUE)
                .addContainerGap())
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(infolabel, javax.swing.GroupLayout.PREFERRED_SIZE, 15, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 3, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void iptalActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_iptalActionPerformed
      System.exit(0);// TODO add your handling code here:
    }//GEN-LAST:event_iptalActionPerformed

    private void girisActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_girisActionPerformed
       userEnter();
    }//GEN-LAST:event_girisActionPerformed

    private void loginameKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_loginameKeyReleased
     infolabel.setText(null);
     if(evt.getKeyCode()==10){
     userEnter();
     }
    }//GEN-LAST:event_loginameKeyReleased

    private void userpaswordKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_userpaswordKeyReleased
    infolabel.setText(null); 
     if(evt.getKeyCode()==10){
     userEnter();
     }// TODO add your handling code here:
    }//GEN-LAST:event_userpaswordKeyReleased

    private void formKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_formKeyReleased
        // TODO add your handling code here:
    }//GEN-LAST:event_formKeyReleased
   
    public String getLogiName(){
    return login_name;
    }
    public String getUserNo(){
    return usr_no;
    }
    private void userEnter(){
            try {
        databs.openDatabase();
        String alcktbl;
                alcktbl="SELECT * FROM kulanici WHERE KULANICI_ADI='"+AESencrp.encrypt(loginame.getText())+"' AND SIFRE = '"+AESencrp.encrypt(userpasword.getText())+"'";
                databs.sttmnt.execute(alcktbl);
                ResultSet rsalck = databs.sttmnt.getResultSet();
                 if(rsalck.next()==true)
                 {
                    login_name=AESencrp.decrypt(rsalck.getString("KULANICI_ADI"));
                    usr_no=rsalck.getString("ID");
                    infolabel.setText(null);
                    new Main_Frame().setVisible(true);
                    this.setVisible(false);
                 }else{
                 infolabel.setText("Yanliş Kulanici veya Şifre");
                 }
                    // TODO add your handling code here:
        } catch (SQLException ex) {
            Logger.getLogger(kulaniciGiris.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
           JOptionPane.showMessageDialog(rootPane,ex);
           Logger.getLogger(kulaniciGiris.class.getName()).log(Level.SEVERE, null, ex);  
       }
        databs.closeDatabase();
    }
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
            java.util.logging.Logger.getLogger(kulaniciGiris.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(kulaniciGiris.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(kulaniciGiris.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(kulaniciGiris.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                try {
                    new kulaniciGiris().setVisible(true);
                } catch (Exception ex) {
                    Logger.getLogger(kulaniciGiris.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton giris;
    private javax.swing.JLabel infolabel;
    private javax.swing.JButton iptal;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField loginame;
    private javax.swing.JPasswordField userpasword;
    // End of variables declaration//GEN-END:variables
}
