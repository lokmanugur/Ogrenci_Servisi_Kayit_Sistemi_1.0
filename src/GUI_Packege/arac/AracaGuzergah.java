/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI_Packege.arac;

import GUI_Packege.ogrenci.OgrenciHareket;
import GUI_Packege.ogrenci.OgrenciKayit;
import StudentServiceClass.DbConnection;
import StudentServiceClass.SadeceSayilar;
import StudentServiceClass.TableToExcel;
import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;
import net.proteanit.sql.DbUtils;
/**
 *
 * @author Administrator
 */
public class AracaGuzergah extends javax.swing.JInternalFrame {
DbConnection databs;
SadeceSayilar sayi=new SadeceSayilar();
    /**
     * Creates new form Ogrenci_Kayit
     * @param databs
     */
    public AracaGuzergah(DbConnection databs) {
       this.databs=databs; 
        initComponents();
        setLocation(getWidth()/2,getHeight()/10);
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        ARAC_SERVIS = new javax.swing.JComboBox();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        OGRENCI_TABLO = new javax.swing.JTable();
        OKUL = new javax.swing.JComboBox();
        jLabel7 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        surucu_adi_soyadi = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        ogrenci_sayisi = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();

        setClosable(true);
        setDefaultCloseOperation(javax.swing.WindowConstants.HIDE_ON_CLOSE);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("Okulların Araçlara Göre Dağılımı Yapılan Öğrenci Listeleri");
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        setName(""); // NOI18N

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Okullara Dağıtılmış Olan Araçlar", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.TOP));

        ARAC_SERVIS.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                ARAC_SERVISitemStateChanged(evt);
            }
        });

        jLabel5.setText("PLAKA");

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel6.setText("ÖĞRENCİ LİSTESİ");

        OGRENCI_TABLO.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        )
        {public boolean isCellEditable(int row, int column){return false;}}
    );
    jScrollPane1.setViewportView(OGRENCI_TABLO);

    OKUL.addItemListener(new java.awt.event.ItemListener() {
        public void itemStateChanged(java.awt.event.ItemEvent evt) {
            OKULitemStateChanged(evt);
        }
    });

    jLabel7.setText("OKUL");

    jLabel1.setText("SÜRÜCÜ:");

    surucu_adi_soyadi.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N

    jLabel3.setText("ARACA KAYITLI ÖĞRENCİ SAYISI:");

    ogrenci_sayisi.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N

    jButton1.setText("Exele Aktar");
    jButton1.addActionListener(new java.awt.event.ActionListener() {
        public void actionPerformed(java.awt.event.ActionEvent evt) {
            jButton1ActionPerformed(evt);
        }
    });

    jButton2.setText("Sıralama Kaydet");
    jButton2.addActionListener(new java.awt.event.ActionListener() {
        public void actionPerformed(java.awt.event.ActionEvent evt) {
            jButton2ActionPerformed(evt);
        }
    });

    jButton3.setText("Sıralama Resetle");
    jButton3.addActionListener(new java.awt.event.ActionListener() {
        public void actionPerformed(java.awt.event.ActionEvent evt) {
            jButton3ActionPerformed(evt);
        }
    });

    javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
    jPanel2.setLayout(jPanel2Layout);
    jPanel2Layout.setHorizontalGroup(
        jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
        .addComponent(jScrollPane1)
        .addGroup(jPanel2Layout.createSequentialGroup()
            .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel2Layout.createSequentialGroup()
                    .addContainerGap()
                    .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(jLabel7)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(OKUL, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(20, 20, 20)
                                .addComponent(jLabel5))
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel2Layout.createSequentialGroup()
                                .addComponent(jLabel1)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(surucu_adi_soyadi, javax.swing.GroupLayout.PREFERRED_SIZE, 159, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGroup(jPanel2Layout.createSequentialGroup()
                            .addComponent(jLabel3)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(ogrenci_sayisi, javax.swing.GroupLayout.PREFERRED_SIZE, 39, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(52, 52, 52)))
                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                    .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(jPanel2Layout.createSequentialGroup()
                            .addComponent(ARAC_SERVIS, javax.swing.GroupLayout.PREFERRED_SIZE, 210, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(11, 11, 11)
                            .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 118, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                            .addComponent(jButton2)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(jButton3))))
                .addComponent(jLabel6))
            .addContainerGap(10, Short.MAX_VALUE))
    );
    jPanel2Layout.setVerticalGroup(
        jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
        .addGroup(jPanel2Layout.createSequentialGroup()
            .addContainerGap()
            .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                .addComponent(jLabel5)
                .addComponent(ARAC_SERVIS, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addComponent(OKUL, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addComponent(jLabel7)
                .addComponent(jButton1))
            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
            .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                .addGroup(jPanel2Layout.createSequentialGroup()
                    .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(jLabel1)
                        .addComponent(surucu_adi_soyadi, javax.swing.GroupLayout.PREFERRED_SIZE, 14, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(jPanel2Layout.createSequentialGroup()
                            .addGap(6, 6, 6)
                            .addComponent(ogrenci_sayisi, javax.swing.GroupLayout.PREFERRED_SIZE, 14, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(jLabel3))))
                .addComponent(jButton2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jButton3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGap(2, 2, 2)
            .addComponent(jLabel6)
            .addGap(0, 0, 0)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 279, Short.MAX_VALUE))
    );

    javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
    getContentPane().setLayout(layout);
    layout.setHorizontalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
        .addComponent(jPanel2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
    );
    layout.setVerticalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
        .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
    );

    getAccessibleContext().setAccessibleName("");
    getAccessibleContext().setAccessibleDescription("");

    pack();
    }// </editor-fold>//GEN-END:initComponents

    private void ARAC_SERVISitemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_ARAC_SERVISİtemStateChanged
        Servis_Dagitilan_Ogrenci();
        servisPersoneli();
        studentCount();
    }//GEN-LAST:event_ARAC_SERVISİtemStateChanged

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        try {
        JFileChooser chooser = new JFileChooser();
        FileNameExtensionFilter filter = new FileNameExtensionFilter("Excel", "xls", "xlsx");
        chooser.setFileFilter(filter);
        int returnVal = chooser.showDialog(null,"Kaydet");
        if(returnVal == JFileChooser.APPROVE_OPTION) 
        {
         TableToExcel tte = new TableToExcel(OGRENCI_TABLO, null, "My Table");
//        tte.setCustomTitles(str);
         File myfile = new File(chooser.getSelectedFile().getPath()+".xls");
         tte.generate(myfile);
        }
    } catch (Exception ex) {
        JOptionPane.showMessageDialog( null,ex.getMessage(), "Write to Excel Error. Tablo Yazdırılamadı.", JOptionPane.ERROR_MESSAGE );
        Logger.getLogger(OgrenciHareket.class.getName()).log(Level.SEVERE, null, ex);
    }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void OKULitemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_OKULİtemStateChanged
        Guzergah_Servis_Cagir();
        servisPersoneli();
        studentCount();
    }//GEN-LAST:event_OKULİtemStateChanged

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
 String sqlAccess;
for(int i=0; i<OGRENCI_TABLO.getRowCount();i++){
    databs.openDatabase(); 

        sqlAccess="UPDATE ogrenci SET SIRA="+OGRENCI_TABLO.getModel().getValueAt(i, 1)+" WHERE ID="+OGRENCI_TABLO.getModel().getValueAt(i,0)+"";
try
    {
    databs.sttmnt.executeUpdate(sqlAccess);
    }
catch(SQLException e)
    {
     JOptionPane.showMessageDialog( null,e.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
    Logger.getLogger(OgrenciHareket.class.getName()).log(Level.SEVERE, null, e);
    }
finally
    {
    databs.closeDatabase();
    }
     }
  Servis_Dagitilan_Ogrenci();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
         String sqlAccess;
for(int i=0; i<OGRENCI_TABLO.getRowCount();i++){
    databs.openDatabase(); 

        sqlAccess="UPDATE ogrenci SET SIRA=NULL WHERE ID="+OGRENCI_TABLO.getModel().getValueAt(i,0)+"";
try
    {
    databs.sttmnt.executeUpdate(sqlAccess);
    }
catch(SQLException e)
    {
     JOptionPane.showMessageDialog( null,e.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
    Logger.getLogger(OgrenciHareket.class.getName()).log(Level.SEVERE, null, e);
    }
finally
    {
    databs.closeDatabase();
    }
Servis_Dagitilan_Ogrenci();
}
    }//GEN-LAST:event_jButton3ActionPerformed
    public void Servis_Dagitilan_Ogrenci(){        
         String firTable = "SELECT "
                 + "o.ID,"
                 + "o.SIRA,"
                 + "o.ADI,"
                 + "o.SOYADI,"
                 + "o.VELI_GSM,"
                 + "o.VELI_ADI,"
                 + "o.SINIF,"
                 + "o.ADRES "
                 + "FROM "
                 + "ogrenci o,"
                 + "arac a,"
                 + "okul ok "
                 + "WHERE "
                 + "o.ARAC_ID = a.ID "
                 + "AND o.OKUL_ID = ok.ID "
                 + "AND ok.OKUL_ADI ='"+OKUL.getSelectedItem()+"' "
                 + "AND a.PLAKA = '"+ARAC_SERVIS.getSelectedItem()+"' "
                 + "AND o.IPTAL = 0 "
                 + "ORDER BY SIRA";
    try {
        databs.openDatabase();
        databs.sttmnt.execute(firTable);
         ResultSet rs = databs.sttmnt.getResultSet();
         OGRENCI_TABLO.setModel(DbUtils.resultSetToTableModel(rs));
    } catch (SQLException ex) {
        JOptionPane.showMessageDialog( null,ex.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
        Logger.getLogger(OgrenciKayit.class.getName()).log(Level.SEVERE, null, ex);
    }finally{
    databs.closeDatabase();
    }
}
public void Guzergah_Okul_Cagir(){
         LinkedHashSet<String> arraylist=new LinkedHashSet<>();   
         String firTable = "SELECT"
                 + " OKUL_ADI"
                 + " FROM"
                 + " okul"
                 + " WHERE"
                 + " IPTAL = 0";
    try {
        databs.openDatabase();
        databs.sttmnt.executeQuery(firTable);
        ResultSet rs = databs.sttmnt.getResultSet();
            while((rs!=null) && (rs.next()))
            {
              arraylist.add(rs.getString("OKUL_ADI"));            
            }
            Iterator i=arraylist.iterator();
            OKUL.removeAllItems();
            while(i.hasNext())
            {
              OKUL.addItem((Object)i.next());
            } 
    } catch (SQLException ex) {
        JOptionPane.showMessageDialog( null,ex.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
        Logger.getLogger(OgrenciKayit.class.getName()).log(Level.SEVERE, null, ex);
    }finally{
    databs.closeDatabase();}
//    Servis_Cagir();
}
public void Guzergah_Servis_Cagir(){
          LinkedHashSet<String> arraylist4=new LinkedHashSet<>(); 
       String firTable = "SELECT "
               + "a.PLAKA "
               + "FROM "
               + "arac a,"
               + "okul o,"
               + "arac_okul ao "
               + "WHERE"
               + " o.ID=ao.OKUL_ID and"
               + " ao.ARAC_ID=a.ID and"
               + " o.OKUL_ADI='"+OKUL.getSelectedItem()+"' and"
               + " a.IPTAL = 0";
    try {
        databs.openDatabase();
        databs.sttmnt.executeQuery(firTable);
         ResultSet rs = databs.sttmnt.getResultSet();
            while((rs!=null) && (rs.next()))
            {
             arraylist4.add(rs.getString("PLAKA"));            
            }
            Iterator i=arraylist4.iterator();
          ARAC_SERVIS.removeAllItems();
            while(i.hasNext()){
           ARAC_SERVIS.addItem((Object)i.next());
             }
            studentCount();
    } catch (SQLException ex) {
        JOptionPane.showMessageDialog( null,ex.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
        Logger.getLogger(OgrenciKayit.class.getName()).log(Level.SEVERE, null, ex);
    }finally{
    databs.closeDatabase();}
}
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox ARAC_SERVIS;
    private javax.swing.JTable OGRENCI_TABLO;
    private javax.swing.JComboBox OKUL;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel ogrenci_sayisi;
    private javax.swing.JLabel surucu_adi_soyadi;
    // End of variables declaration//GEN-END:variables
 private void studentCount(){
 String count="select"
         + " count(distinct o.ID)"
         + " from"
         + " ogrenci o,"
         + " arac a,"
         + " okul ok"
         + " where"
         + " o.ARAC_ID = a.ID AND"
         + " o.OKUL_ID = ok.ID AND"
         + " ok.OKUL_ADI ='"+OKUL.getSelectedItem()+"' AND"
         + " a.PLAKA ='"+ARAC_SERVIS.getSelectedItem()+"' AND"
         + " o.IPTAL=0;";
     try {
         databs.openDatabase();
         databs.sttmnt.executeQuery(count);
         ResultSet rs = databs.sttmnt.getResultSet();
         while ((rs != null) && (rs.next())) 
         {
             ogrenci_sayisi.setText(rs.getString(1));             
         }
     }catch (SQLException ex) {
         JOptionPane.showMessageDialog(null, ex.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE);
         Logger.getLogger(OgrenciKayit.class.getName()).log(Level.SEVERE, null, ex);
     } finally 
        {
         databs.closeDatabase();
        }
    }
   private void servisPersoneli(){
 String count="select"
         + " CONCAT(p.ADI,' ',p.SOYADI) AS PERSONEL"
         + " from"
         + " personel p,"
         + " arac a"
         + " where"
         + " a.PERSONEL_ID=p.ID and"
         + " a.PLAKA='"+ARAC_SERVIS.getSelectedItem()+"' and"
         + " p.IPTAL=0;";
     try {
         databs.openDatabase();
         databs.sttmnt.executeQuery(count);
         ResultSet rs = databs.sttmnt.getResultSet();
         while ((rs != null) && (rs.next())) 
         {
            surucu_adi_soyadi.setText(rs.getString(1));             
         }
     }catch (SQLException ex) {
         JOptionPane.showMessageDialog(null, ex.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE);
         Logger.getLogger(OgrenciKayit.class.getName()).log(Level.SEVERE, null, ex);
     } finally 
        {
         databs.closeDatabase();
        }
    }
   private void addtoexcel(String path){
           try {
        JFileChooser chooser = new JFileChooser();
        FileNameExtensionFilter filter = new FileNameExtensionFilter("Excel", "xls", "xlsx");
        chooser.setFileFilter(filter);
        int returnVal = chooser.showDialog(null,"Kaydet");
        if(returnVal == JFileChooser.APPROVE_OPTION) 
        {
         TableToExcel tte = new TableToExcel(OGRENCI_TABLO, null, "My Table");
//        tte.setCustomTitles(str);
         File myfile = new File(chooser.getSelectedFile().getPath()+".xls");
         tte.generate(myfile);
        }
    } catch (Exception ex) {
        JOptionPane.showMessageDialog( null,ex.getMessage(), "Write to Excel Error. Tablo Yazdırılamadı.", JOptionPane.ERROR_MESSAGE );
        Logger.getLogger(OgrenciHareket.class.getName()).log(Level.SEVERE, null, ex);
    }
   }
}
