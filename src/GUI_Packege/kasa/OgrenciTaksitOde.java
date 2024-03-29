/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI_Packege.kasa;
import GUI_Packege.ogrenci.OgrenciKayit;
import StudentServiceClass.DbConnection;
import StudentServiceClass.jxDate;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
/**
 *
 * @author Administrator
 */
public class OgrenciTaksitOde extends javax.swing.JInternalFrame {
DbConnection databs;
public int ID;
    /**
     * Creates new form OgrenciTaksitOde
     * @param databs
     */
    public OgrenciTaksitOde(DbConnection databs) {
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

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jXDatePickerTarih = new org.jdesktop.swingx.JXDatePicker();
        taksitno = new javax.swing.JLabel();
        olusturmatarihi = new javax.swing.JLabel();
        odemetarihi = new javax.swing.JLabel();
        taksitmiktari = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        odenecekmiktar = new javax.swing.JFormattedTextField();
        jLabel10 = new javax.swing.JLabel();
        odemeSekli = new javax.swing.JComboBox();
        jLabel5 = new javax.swing.JLabel();
        Kaydet = new javax.swing.JButton();

        setClosable(true);
        setDefaultCloseOperation(javax.swing.WindowConstants.HIDE_ON_CLOSE);
        setIconifiable(true);
        setResizable(true);
        setTitle("Öğrenci Tasksit Öde");

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Taksit Bilgileri"));

        jLabel1.setText("Taksit No:");

        jLabel2.setText("Taksit Miktarı:");

        jLabel3.setText("Oluşturma Tarihi:");

        jLabel4.setText("Ödeme Tarihi:");

        taksitno.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N

        olusturmatarihi.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N

        odemetarihi.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N

        taksitmiktari.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N

        jLabel9.setText("Ödenecek Miktar:");

        odenecekmiktar.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#,##0.00"))));

        jLabel10.setText("Tarih:");

        odemeSekli.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "NAKİT", "K.KARTI" }));

        jLabel5.setText("Ödeme şekli:");

        Kaydet.setText("Ödemeyi Onayla");
        Kaydet.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                KaydetActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap(29, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(Kaydet)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel10)
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(jLabel9)
                                .addComponent(jLabel2, javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(jLabel4, javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(jLabel3, javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(jLabel1, javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(jLabel5, javax.swing.GroupLayout.Alignment.TRAILING)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(odemeSekli, 0, 119, Short.MAX_VALUE)
                            .addComponent(olusturmatarihi, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(odemetarihi, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(taksitmiktari, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(odenecekmiktar)
                            .addComponent(taksitno, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jXDatePickerTarih, javax.swing.GroupLayout.DEFAULT_SIZE, 119, Short.MAX_VALUE))))
                .addContainerGap(30, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(21, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jXDatePickerTarih, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel10))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1)
                    .addComponent(taksitno, javax.swing.GroupLayout.PREFERRED_SIZE, 14, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(olusturmatarihi, javax.swing.GroupLayout.PREFERRED_SIZE, 14, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(odemetarihi, javax.swing.GroupLayout.PREFERRED_SIZE, 14, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(taksitmiktari, javax.swing.GroupLayout.PREFERRED_SIZE, 14, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel9)
                    .addComponent(odenecekmiktar, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(odemeSekli, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(Kaydet)
                .addContainerGap(18, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(32, Short.MAX_VALUE)
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap(32, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(32, Short.MAX_VALUE)
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap(32, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void KaydetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_KaydetActionPerformed
     update();   // TODO add your handling code here:
    }//GEN-LAST:event_KaydetActionPerformed

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Kaydet;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private org.jdesktop.swingx.JXDatePicker jXDatePickerTarih;
    private javax.swing.JComboBox odemeSekli;
    private javax.swing.JLabel odemetarihi;
    private javax.swing.JFormattedTextField odenecekmiktar;
    private javax.swing.JLabel olusturmatarihi;
    private javax.swing.JLabel taksitmiktari;
    private javax.swing.JLabel taksitno;
    // End of variables declaration//GEN-END:variables

public void taksitOde(){
jXDatePickerTarih.setDate(new jxDate().curentDate());
String mySql="select "
        + "TAKSIT_NO,"
        + "DATE_FORMAT(OLUSTURMA_TARIH,'%m-%d-%Y') OLUŞTURMA_TARİHİ,"
        + "DATE_FORMAT(ODEME_TARIHI,'%d-%m-%Y') ÖDEME_TARİHİ,"
        + "TAKSIT_MIKTARI"
        + " from taksit where ID="+this.ID+";";
    try {
        databs.openDatabase();
        databs.sttmnt.execute(mySql);
        ResultSet rs = databs.sttmnt.getResultSet();  
        while(rs!=null && rs.next()){
        taksitno.setText(rs.getString(1));
        olusturmatarihi.setText(rs.getString(2));
        odemetarihi.setText(rs.getString(3));
        String str=rs.getString(4);
        taksitmiktari.setText(str+" TL");
        odenecekmiktar.setValue(Double.parseDouble(str));
        }
        } catch(SQLException e){
        JOptionPane.showMessageDialog( null,e.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
        Logger.getLogger(OgrenciTaksitOde.class.getName()).log(Level.SEVERE, null, e);
            }
    finally
    {
      databs.closeDatabase();
        }
    }
private void update(){
    String UpDate="UPDATE taksit SET "
                + "ODENEN_MIKTAR='"+(double)odenecekmiktar.getValue()+"'"
                + ",ODENEN_TARIH=STR_TO_DATE('"+new jxDate().getDate(jXDatePickerTarih)+"','%d-%m-%Y')"
                + ",ODEME_SEKLI='"+(String)odemeSekli.getSelectedItem()+"'"
                + ",ODEME_DURUM=1 WHERE ID="+ID+"";
            try {
                databs.openDatabase();
                databs.sttmnt.execute(UpDate);
                JOptionPane.showMessageDialog(null, "Taksit Ödemesi Yapıldı.");
               // this.hide();
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog( null,ex.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
                Logger.getLogger(OgrenciKayit.class.getName()).log(Level.SEVERE, null, ex);
            }finally{databs.closeDatabase();}
        }
}
