/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI_Packege.okul;

import GUI_Packege.ogrenci.OgrenciHareket;
import StudentServiceClass.DbConnection;
import StudentServiceClass.ReinstalData;
import StudentServiceClass.SadeceSayilar;
import StudentServiceClass.TableToExcel;
import java.beans.PropertyVetoException;
import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;
import net.proteanit.sql.DbUtils;
/**
 *
 * @author zehirugur
 */
public class OkulHareket extends javax.swing.JInternalFrame {
ReinstalData rid=new ReinstalData();
DbConnection databs;
OkulKayit internalF;
SadeceSayilar sayicontrol=new SadeceSayilar();
/**
     * Creates new form Ogrenci_Hareket
     * 
     * @param jif
     * @param databs
     */
    public OkulHareket(OkulKayit jif,DbConnection databs) {
       this.databs=databs;
        initComponents();
        setLocation(getWidth()/2,getHeight()/10);
       internalF=jif;
    }
public void getKayit()
{
String firTable = "SELECT \n" +
"  ID,\n" +
"  OKUL_ADI,\n" +
"  AD_SOYAD as GOREVLİ,\n" +
"  TELEFON,\n" +
"  ADRES\n" +       
"FROM \n" +
"  okul \n" +
"WHERE \n";
if(iptal_check.isSelected()==true){
firTable+=" IPTAL = 1";
}
if(iptal_check.isSelected()==false){
firTable+=" IPTAL = 0";
}
if(!ID.getText().equals(""))
{
firTable+=" AND ID LIKE "+ID.getText()+"";
}
if(!ADI.getText().equals(""))
{
firTable+=" AND OKUL_ADI LIKE '"+ADI.getText()+"%'";
}
    try {
        databs.openDatabase();
        databs.sttmnt.execute(firTable);
        ResultSet rs = databs.sttmnt.getResultSet();
        OKUL_TABLO.setModel(DbUtils.resultSetToTableModel(rs));  
    } catch (SQLException ex) {
        JOptionPane.showMessageDialog( null,ex.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
        Logger.getLogger(OkulHareket.class.getName()).log(Level.SEVERE, null, ex);
    }
    databs.closeDatabase();
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
        jPanel2 = new javax.swing.JPanel();
        GUNCELLE = new javax.swing.JButton();
        SIL = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        ID = new javax.swing.JTextField();
        ADI = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        ARA = new javax.swing.JButton();
        iptal_check = new javax.swing.JCheckBox();
        jPanel4 = new javax.swing.JPanel();
        Exel_Yaz = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        OKUL_TABLO = new javax.swing.JTable();

        setClosable(true);
        setDefaultCloseOperation(javax.swing.WindowConstants.HIDE_ON_CLOSE);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("Okul Hareket");
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Güncelleme", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP));

        GUNCELLE.setText("Güncelle");
        GUNCELLE.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                GUNCELLEActionPerformed(evt);
            }
        });

        SIL.setText("Sil");
        SIL.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SILActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(7, 7, 7)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(SIL, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(GUNCELLE, javax.swing.GroupLayout.DEFAULT_SIZE, 86, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(GUNCELLE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(SIL)
                .addContainerGap(16, Short.MAX_VALUE))
        );

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Ara", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP));

        ID.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                IDKeyReleased(evt);
            }
        });

        jLabel5.setText("ID");

        jLabel2.setText("OKUL_ADI");

        ARA.setText("Ara");
        ARA.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ARAActionPerformed(evt);
            }
        });

        iptal_check.setText("İPTAL");
        iptal_check.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        iptal_check.setHorizontalTextPosition(javax.swing.SwingConstants.LEADING);

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap(42, Short.MAX_VALUE)
                .addComponent(jLabel5)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(ID, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(32, 32, 32)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(ADI, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(34, 34, 34)
                .addComponent(ARA, javax.swing.GroupLayout.PREFERRED_SIZE, 79, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(28, 28, 28)
                .addComponent(iptal_check)
                .addContainerGap(10, Short.MAX_VALUE))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(ID, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ADI, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5)
                    .addComponent(jLabel2)
                    .addComponent(iptal_check, javax.swing.GroupLayout.PREFERRED_SIZE, 21, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ARA))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Çıktı", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP));

        Exel_Yaz.setText("Exelle Yaz");
        Exel_Yaz.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Exel_YazActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGap(7, 7, 7)
                .addComponent(Exel_Yaz, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(Exel_Yaz)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );

        OKUL_TABLO.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        )
        {public boolean isCellEditable(int row, int column){return false;}}
    );
    jScrollPane1.setViewportView(OKUL_TABLO);

    javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
    getContentPane().setLayout(layout);
    layout.setHorizontalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
        .addGroup(layout.createSequentialGroup()
            .addContainerGap()
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addContainerGap())
        .addComponent(jScrollPane1)
    );
    layout.setVerticalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
            .addContainerGap()
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 227, Short.MAX_VALUE))
    );

    pack();
    }// </editor-fold>//GEN-END:initComponents

    private void ARAActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ARAActionPerformed
    getKayit();        // TODO add your handling code here:
    }//GEN-LAST:event_ARAActionPerformed

    private void SILActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SILActionPerformed
    getSil();        // TODO add your handling code here:
    }//GEN-LAST:event_SILActionPerformed

    private void GUNCELLEActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_GUNCELLEActionPerformed
if(-1==OKUL_TABLO.getSelectedRow())
{
    JOptionPane.showMessageDialog(rootPane, "Lütfen Bilgilerini Değiştirmek İstediğiniz Okulu Seçiniz.");
}else{
    internalF.ID=OKUL_TABLO.getModel().getValueAt(OKUL_TABLO.getSelectedRow(),0);
    internalF.ADI.setText((String)OKUL_TABLO.getModel().getValueAt(OKUL_TABLO.getSelectedRow(),1));
    internalF.AD_SOYAD_YET.setText((String)OKUL_TABLO.getModel().getValueAt(OKUL_TABLO.getSelectedRow(),2));
    internalF.TELEFON_YET.setText((String)OKUL_TABLO.getModel().getValueAt(OKUL_TABLO.getSelectedRow(),3));
    internalF.ADRES.setText((String)OKUL_TABLO.getModel().getValueAt(OKUL_TABLO.getSelectedRow(),4));
    internalF.Kaydet.setText("Güncelle");
    internalF.Temizle.setText("Vazgeç");
    try {
        internalF.show(true);
        internalF.setSelected(true);
    } catch (PropertyVetoException ex) {
        JOptionPane.showMessageDialog( null,ex.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
        Logger.getLogger(OkulHareket.class.getName()).log(Level.SEVERE, null, ex);
    }
}
    }//GEN-LAST:event_GUNCELLEActionPerformed

    private void Exel_YazActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Exel_YazActionPerformed
        try {
        JFileChooser chooser = new JFileChooser();
        FileNameExtensionFilter filter = new FileNameExtensionFilter("Excel", "xls", "xlsx");
        chooser.setFileFilter(filter);
        int returnVal = chooser.showDialog(null,"Kaydet");
        if(returnVal == JFileChooser.APPROVE_OPTION) 
        {
         TableToExcel tte = new TableToExcel(OKUL_TABLO, null, "My Table");
//        tte.setCustomTitles(str);
         File myfile = new File(chooser.getSelectedFile().getPath()+".xls");
         tte.generate(myfile);
        }
    } catch (Exception ex) {
        JOptionPane.showMessageDialog( null,ex.getMessage(), "Write to Excel Error. Tablo Yazdırılamadı.", JOptionPane.ERROR_MESSAGE );
        Logger.getLogger(OgrenciHareket.class.getName()).log(Level.SEVERE, null, ex);
    }
    }//GEN-LAST:event_Exel_YazActionPerformed

    private void IDKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_IDKeyReleased
        sayicontrol.numberInteger(evt.getKeyChar(), ID);
    }//GEN-LAST:event_IDKeyReleased
    private void getSil()
    {
  if(OKUL_TABLO.getSelectedRow()!=-1){
     int result = JOptionPane.showOptionDialog(null, 
     (String)OKUL_TABLO.getModel().getValueAt(OKUL_TABLO.getSelectedRow(),1)+" "+(String)OKUL_TABLO.getModel().getValueAt(OKUL_TABLO.getSelectedRow(),2)+" SİLİNECEK! SİLMEK istediğinize eminmisiniz.", 
     "Feedback", 
     JOptionPane.OK_CANCEL_OPTION, 
     JOptionPane.WARNING_MESSAGE, 
     null, 
     new String[]{"EVET", "HAYIR"},
        "default");
     if(result==JOptionPane.OK_OPTION)
     {
databs.openDatabase();   
String sqlAccess="UPDATE okul SET IPTAL=1 WHERE ID="+OKUL_TABLO.getModel().getValueAt(OKUL_TABLO.getSelectedRow(),0)+"";
try
{
databs.sttmnt.executeUpdate(sqlAccess);
}catch(SQLException e)
{
    JOptionPane.showMessageDialog( null,e.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
Logger.getLogger(OkulHareket.class.getName()).log(Level.SEVERE, null, e);
}finally{
databs.closeDatabase();}
     }
  }else{
  JOptionPane.showMessageDialog(rootPane," Lütfen Silmek İstediğiniz Okulu Seçiniz.");
  }
  getKayit();
}
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField ADI;
    private javax.swing.JButton ARA;
    private javax.swing.JButton Exel_Yaz;
    private javax.swing.JButton GUNCELLE;
    private javax.swing.JTextField ID;
    private javax.swing.JTable OKUL_TABLO;
    private javax.swing.JButton SIL;
    private javax.swing.JCheckBox iptal_check;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
}