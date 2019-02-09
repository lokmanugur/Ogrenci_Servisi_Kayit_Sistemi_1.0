/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI_Packege.kasa;

import GUI_Packege.ogrenci.OgrenciHareket;
import StudentServiceClass.DbConnection;
import StudentServiceClass.OnInstallmentPlan;
import StudentServiceClass.ReinstalData;
import StudentServiceClass.SadeceSayilar;
import StudentServiceClass.TableToExcel;
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
 * @author Administrator
 */
public class MaasOdemeEkrani extends javax.swing.JInternalFrame {
SadeceSayilar sayicontrol = new SadeceSayilar();
OnInstallmentPlan taksitle = new OnInstallmentPlan();
ReinstalData delettable = new ReinstalData();
DbConnection databs;
//jxDate dt = new jxDate();
    /**
     * Creates new form Odeme_Sekli
     * @param databs
     */
    public MaasOdemeEkrani(DbConnection databs) {
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

        jScrollPane2 = new javax.swing.JScrollPane();
        maastablo = new javax.swing.JTable();
        jPanel4 = new javax.swing.JPanel();
        Exel_Yaz = new javax.swing.JButton();
        detayGoster = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        ID = new javax.swing.JTextField();
        ADI = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        SOYADI = new javax.swing.JTextField();
        ARA = new javax.swing.JButton();
        iptal_check = new javax.swing.JCheckBox();

        setClosable(true);
        setDefaultCloseOperation(javax.swing.WindowConstants.HIDE_ON_CLOSE);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("Maaş Ödeme Ekranı");

        maastablo.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        )
        {public boolean isCellEditable(int row, int column){return false;}}
    );
    maastablo.addMouseListener(new java.awt.event.MouseAdapter() {
        public void mouseReleased(java.awt.event.MouseEvent evt) {
            maastabloMouseReleased(evt);
        }
    });
    jScrollPane2.setViewportView(maastablo);

    jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Çıktı", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP));

    Exel_Yaz.setText("Exelle Yaz");
    Exel_Yaz.addActionListener(new java.awt.event.ActionListener() {
        public void actionPerformed(java.awt.event.ActionEvent evt) {
            Exel_YazActionPerformed(evt);
        }
    });

    detayGoster.setText("Ödeme Yap");
    detayGoster.addActionListener(new java.awt.event.ActionListener() {
        public void actionPerformed(java.awt.event.ActionEvent evt) {
            detayGosterActionPerformed(evt);
        }
    });

    javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
    jPanel4.setLayout(jPanel4Layout);
    jPanel4Layout.setHorizontalGroup(
        jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel4Layout.createSequentialGroup()
            .addGap(7, 7, 7)
            .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                .addComponent(detayGoster, javax.swing.GroupLayout.DEFAULT_SIZE, 90, Short.MAX_VALUE)
                .addComponent(Exel_Yaz, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addContainerGap())
    );
    jPanel4Layout.setVerticalGroup(
        jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
        .addGroup(jPanel4Layout.createSequentialGroup()
            .addContainerGap()
            .addComponent(Exel_Yaz)
            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
            .addComponent(detayGoster)
            .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
    );

    jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Ara", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP));

    ID.addKeyListener(new java.awt.event.KeyAdapter() {
        public void keyReleased(java.awt.event.KeyEvent evt) {
            IDKeyReleased(evt);
        }
    });

    jLabel5.setText("ID");

    jLabel2.setText("ADI");

    jLabel4.setText("SOYADI");

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
            .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jLabel5)
            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
            .addComponent(ID, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addGap(26, 26, 26)
            .addComponent(jLabel2)
            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
            .addComponent(ADI, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addGap(21, 21, 21)
            .addComponent(jLabel4)
            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
            .addComponent(SOYADI, javax.swing.GroupLayout.PREFERRED_SIZE, 79, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
            .addComponent(iptal_check)
            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 11, Short.MAX_VALUE)
            .addComponent(ARA, javax.swing.GroupLayout.PREFERRED_SIZE, 79, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addContainerGap())
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
                .addComponent(jLabel4)
                .addComponent(SOYADI, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addComponent(ARA, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addComponent(iptal_check, javax.swing.GroupLayout.PREFERRED_SIZE, 21, javax.swing.GroupLayout.PREFERRED_SIZE))
            .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
    );

    javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
    getContentPane().setLayout(layout);
    layout.setHorizontalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
        .addComponent(jScrollPane2)
        .addGroup(layout.createSequentialGroup()
            .addContainerGap(20, Short.MAX_VALUE)
            .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
            .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addContainerGap(11, Short.MAX_VALUE))
    );
    layout.setVerticalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
            .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 189, Short.MAX_VALUE))
    );

    pack();
    }// </editor-fold>//GEN-END:initComponents

    private void ARAActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ARAActionPerformed
getKayit();
    }//GEN-LAST:event_ARAActionPerformed

    private void IDKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_IDKeyReleased
         sayicontrol.numberInteger(evt.getKeyChar(), ID);        // TODO add your handling code here:
    }//GEN-LAST:event_IDKeyReleased

    private void maastabloMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_maastabloMouseReleased
        if(evt.getClickCount()==2)
            secilenRow();        // TODO add your handling code here:
    }//GEN-LAST:event_maastabloMouseReleased

    private void Exel_YazActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Exel_YazActionPerformed
        try {
        JFileChooser chooser = new JFileChooser();
        FileNameExtensionFilter filter = new FileNameExtensionFilter("Excel", "xls", "xlsx");
        chooser.setFileFilter(filter);
        int returnVal = chooser.showDialog(null,"Kaydet");
        if(returnVal == JFileChooser.APPROVE_OPTION) 
        {
         TableToExcel tte = new TableToExcel(maastablo, null, "My Table");
//        tte.setCustomTitles(str);
         File myfile = new File(chooser.getSelectedFile().getPath()+".xls");
         tte.generate(myfile);
        }
    } catch (Exception ex) {
        JOptionPane.showMessageDialog( null,ex.getMessage(), "Write to Excel Error. Tablo Yazdırılamadı.", JOptionPane.ERROR_MESSAGE );
        Logger.getLogger(OgrenciHareket.class.getName()).log(Level.SEVERE, null, ex);
    }
    }//GEN-LAST:event_Exel_YazActionPerformed

    private void detayGosterActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_detayGosterActionPerformed
        if(maastablo.getSelectedRow()!=-1)
        {
            secilenRow();
        }
        else
        JOptionPane.showMessageDialog(rootPane,"Lütfen Bir Öğrenci Seçin.");
    }//GEN-LAST:event_detayGosterActionPerformed
    private void secilenRow()
    {
        //OgrAyrEkr.ogrenciBilgi((int)maastablo.getModel().getValueAt(maastablo.getSelectedRow(),0));
//        mo.filTable((int)maastablo.getModel().getValueAt(maastablo.getSelectedRow(),0));
//        mo.show(true);
    }
    private void getKayit()
{  
String firTable = "SELECT "+
"    p.ID,\n" +
"    p.ADI,\n" +
"    p.SOYADI,\n" +
"    m.MAAS_MIKTAR,\n"+        
"    m.ODENEN_TARIH \n" +       
"FROM \n" +
"    maas m,\n" +
"    personel p \n" +
"WHERE \n" +
"    p.ID = m.PERSONEL_ID AND \n";
    if(iptal_check.isSelected()==true){
    firTable+=" p.IPTAL = 1";
    }
    if(iptal_check.isSelected()==false){
    firTable+=" p.IPTAL = 0";
    }
    if(!ID.getText().equals(""))
    {
    firTable+=" AND p.ID LIKE "+ID.getText()+"";
    }
    if(!ADI.getText().equals(""))
    {
    firTable+=" AND p.ADI LIKE '"+ADI.getText()+"%'";
    }
    if(!SOYADI.getText().equals(""))
    {
    firTable+=" AND p.SOYADI LIKE '"+SOYADI.getText()+"%'";
    }
    try {   
        databs.openDatabase();
        databs.sttmnt.execute(firTable);
        ResultSet rs = databs.sttmnt.getResultSet();
        maastablo.setModel(DbUtils.resultSetToTableModel(rs));  
    } catch (SQLException ex) {
        JOptionPane.showMessageDialog( null,ex.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
        Logger.getLogger(OgrenciHareket.class.getName()).log(Level.SEVERE, null, ex);
    }finally{
    databs.closeDatabase();
    }
}
    
    public void filTable(){
String mySQL = "SELECT "+
"    p.ID,\n" +
"    p.ADI,\n" +
"    p.SOYADI,\n" +
"    m.MAAS_MIKTAR,\n"+        
"    m.ODENEN_TARIH \n" +       
"FROM \n" +
"    maas m,\n" +
"    personel p \n" +
"WHERE \n" +
"    p.ID = m.PERSONEL_ID AND \n" +
"    p.IPTAL=0;";
        try {
                databs.openDatabase();
                databs.sttmnt.execute(mySQL);
                ResultSet rs = databs.sttmnt.getResultSet();
                maastablo.setModel(DbUtils.resultSetToTableModel(rs));
            }
            catch (Exception e) 
            {
              JOptionPane.showMessageDialog( null,e.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
            }
        finally
        {
          databs.closeDatabase();
        }
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField ADI;
    private javax.swing.JButton ARA;
    private javax.swing.JButton Exel_Yaz;
    private javax.swing.JTextField ID;
    private javax.swing.JTextField SOYADI;
    private javax.swing.JButton detayGoster;
    private javax.swing.JCheckBox iptal_check;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable maastablo;
    // End of variables declaration//GEN-END:variables
}
