package GUI_Packege.arac;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import GUI_Packege.ogrenci.OgrenciHareket;
import StudentServiceClass.ReinstalData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import net.proteanit.sql.DbUtils;
import StudentServiceClass.DbConnection;
import StudentServiceClass.SadeceSayilar;
import StudentServiceClass.TableToExcel;
import StudentServiceClass.jxDate;
import java.beans.PropertyVetoException;
import java.io.File;
import java.text.ParseException;
import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;

/**
 *
 * @author zehirugur
 */
public class AracHareket extends javax.swing.JInternalFrame {
    ReinstalData rid=new ReinstalData();
    DbConnection databs;
    AracKayit internalF;
    SadeceSayilar sayicontrol=new SadeceSayilar();
    jxDate dat = new jxDate();
/**
     * Creates new form Ogrenci_Hareket
     * 
     * @param jif
     * @param databs
     */
    public AracHareket(AracKayit jif,DbConnection databs) {
       this.databs=databs; 
        initComponents();
        setLocation(getWidth()/2,getHeight()/10);   
      //dene getKayit();
       internalF=jif;
    }
public void getKayit()
{  
String firTable = "SELECT \n" +
    "  a.ID,\n" +
    "  DATE_FORMAT(a.BASLA_TARIH,'%d-%m-%Y') AS BAŞLAMA_TARİHİ,\n" +
    "  a.PLAKA,\n" +
    "  CONCAT(p.ADI,' ',p.SOYADI) AS PERSONEL,\n" +
    "  a.MODEL,\n" +
    "  a.KOLTUK_SAYISI,\n" +
    "  a.ARAC_TIP \n" +
    "FROM \n" +
    "  arac a,\n" +
    "  personel p\n " +
    "WHERE p.ID=a.PERSONEL_ID AND \n";
    if(iptal_check.isSelected()==true){
    firTable+=" a.IPTAL = 1";
    }
    if(iptal_check.isSelected()==false){
    firTable+=" a.IPTAL = 0";
    }
    if(!ID.getText().equals(""))
    {
    firTable+=" AND a.ID LIKE "+ID.getText()+"";
    }
    if(!PLAKA.getText().equals(""))
    {
    firTable+=" AND a.PLAKA LIKE '"+PLAKA.getText()+"%'";
    }
    if(!MODEL.getText().equals(""))
    {
    firTable+=" AND a.MODEL LIKE '"+MODEL.getText()+"%'";
    }
    try {   
        databs.openDatabase();
        databs.sttmnt.execute(firTable);
        ResultSet rs = databs.sttmnt.getResultSet();
        ARAC_TABLO.setModel(DbUtils.resultSetToTableModel(rs));  
    } catch (SQLException ex) {
        JOptionPane.showMessageDialog( null,ex.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
        Logger.getLogger(OgrenciHareket.class.getName()).log(Level.SEVERE, null, ex);
    }finally{
    databs.closeDatabase();
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

        jScrollPane1 = new javax.swing.JScrollPane();
        ARAC_TABLO = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        GUNCELLE = new javax.swing.JButton();
        SIL = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        ID = new javax.swing.JTextField();
        PLAKA = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        MODEL = new javax.swing.JTextField();
        ARA = new javax.swing.JButton();
        iptal_check = new javax.swing.JCheckBox();
        jPanel4 = new javax.swing.JPanel();
        Exel_Yaz = new javax.swing.JButton();

        setClosable(true);
        setDefaultCloseOperation(javax.swing.WindowConstants.HIDE_ON_CLOSE);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("Araç Hareket");
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        ARAC_TABLO.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }

        )
        {public boolean isCellEditable(int row, int column){return false;}}
    );
    jScrollPane1.setViewportView(ARAC_TABLO);

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
            .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
    );

    jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Ara", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP));

    ID.addKeyListener(new java.awt.event.KeyAdapter() {
        public void keyReleased(java.awt.event.KeyEvent evt) {
            IDKeyReleased(evt);
        }
    });

    jLabel5.setText("ID");

    jLabel2.setText("PLAKA");

    jLabel4.setText("MODEL");

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
            .addComponent(PLAKA, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addGap(18, 18, 18)
            .addComponent(jLabel4)
            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
            .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                .addComponent(ARA, javax.swing.GroupLayout.DEFAULT_SIZE, 79, Short.MAX_VALUE)
                .addComponent(MODEL))
            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
            .addComponent(iptal_check)
            .addContainerGap(10, Short.MAX_VALUE))
    );
    jPanel3Layout.setVerticalGroup(
        jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
        .addGroup(jPanel3Layout.createSequentialGroup()
            .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                .addComponent(ID, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addComponent(PLAKA, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addComponent(jLabel5)
                .addComponent(jLabel2)
                .addComponent(jLabel4)
                .addComponent(MODEL, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addComponent(iptal_check, javax.swing.GroupLayout.PREFERRED_SIZE, 21, javax.swing.GroupLayout.PREFERRED_SIZE))
            .addGap(2, 2, 2)
            .addComponent(ARA)
            .addContainerGap(19, Short.MAX_VALUE))
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

    javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
    getContentPane().setLayout(layout);
    layout.setHorizontalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
        .addGroup(layout.createSequentialGroup()
            .addContainerGap()
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addComponent(jScrollPane1)
                .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addContainerGap())
    );
    layout.setVerticalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
            .addContainerGap()
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 178, Short.MAX_VALUE))
    );

    pack();
    }// </editor-fold>//GEN-END:initComponents

    private void ARAActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ARAActionPerformed
    getKayit();
    }//GEN-LAST:event_ARAActionPerformed

    private void SILActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SILActionPerformed
    getSil();
    }//GEN-LAST:event_SILActionPerformed

    private void GUNCELLEActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_GUNCELLEActionPerformed
    if(-1==ARAC_TABLO.getSelectedRow()){
    JOptionPane.showMessageDialog(rootPane, "Lütfen Bilgilerini Değiştirmek İstediğiniz Aracı Seçiniz.");
    }else{
        try {
    internalF.ID=ARAC_TABLO.getModel().getValueAt(ARAC_TABLO.getSelectedRow(),0);
    internalF.AracDatePicker.setDate(dat.dateFormat(ARAC_TABLO.getModel().getValueAt(ARAC_TABLO.getSelectedRow(),1)));
    internalF.PLAKA.setText((String)ARAC_TABLO.getModel().getValueAt(ARAC_TABLO.getSelectedRow(),2));
    internalF.PERSONEL.setSelectedItem((String)ARAC_TABLO.getModel().getValueAt(ARAC_TABLO.getSelectedRow(),3));
    internalF.MODEL.setText((String)ARAC_TABLO.getModel().getValueAt(ARAC_TABLO.getSelectedRow(),4));
    internalF.KOLTUK_SAYI.setText(String.valueOf(ARAC_TABLO.getModel().getValueAt(ARAC_TABLO.getSelectedRow(),5)));
    internalF.ARACTIPI.setText((String)ARAC_TABLO.getModel().getValueAt(ARAC_TABLO.getSelectedRow(),6));
    internalF.Kaydet.setText("Güncelle");
    internalF.Temizle.setText("Vazgeç");
     } catch (ParseException ex) {
       JOptionPane.showMessageDialog( null,ex.getMessage(), "JxDatePicker error", JOptionPane.ERROR_MESSAGE );
       Logger.getLogger(AracHareket.class.getName()).log(Level.SEVERE, null, ex);
        }
    try {
        internalF.show(true);
        internalF.setSelected(true);
    } catch (PropertyVetoException ex) {
        JOptionPane.showMessageDialog( null,ex.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
        Logger.getLogger(OgrenciHareket.class.getName()).log(Level.SEVERE, null, ex);
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
         TableToExcel tte = new TableToExcel(ARAC_TABLO, null, "My Table");
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
  if(ARAC_TABLO.getSelectedRow()!=-1){
     int result = JOptionPane.showOptionDialog(null, 
     (String)ARAC_TABLO.getModel().getValueAt(ARAC_TABLO.getSelectedRow(),1)+" "+(String)ARAC_TABLO.getModel().getValueAt(ARAC_TABLO.getSelectedRow(),2)+" SİLİNECEK! SİLMEK istediĞinize eminmisiniz.", 
     "Feedback", 
     JOptionPane.OK_CANCEL_OPTION, 
     JOptionPane.WARNING_MESSAGE, 
     null, 
     new String[]{"EVET", "HAYIR"},
        "default");
     if(result==JOptionPane.OK_OPTION)
     {
databs.openDatabase();   
String sqlAccess="UPDATE arac SET IPTAL=1 WHERE ID="+ARAC_TABLO.getModel().getValueAt(ARAC_TABLO.getSelectedRow(),0)+"";
try
{
databs.sttmnt.executeUpdate(sqlAccess);
}catch(SQLException e)
{
 JOptionPane.showMessageDialog( null,e.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
Logger.getLogger(OgrenciHareket.class.getName()).log(Level.SEVERE, null, e);
}finally{
    databs.closeDatabase();}
     }
  }else{
  JOptionPane.showMessageDialog(rootPane," Lütfen Silmek İstediğiniz Aracı Seçiniz.");
  }
  getKayit();
}
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton ARA;
    private javax.swing.JTable ARAC_TABLO;
    private javax.swing.JButton Exel_Yaz;
    private javax.swing.JButton GUNCELLE;
    private javax.swing.JTextField ID;
    private javax.swing.JTextField MODEL;
    private javax.swing.JTextField PLAKA;
    private javax.swing.JButton SIL;
    private javax.swing.JCheckBox iptal_check;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
}