/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StudentServiceClass;

import javax.swing.JOptionPane;
/**
 *
 * @author Administrator
 */
public class SadeceSayilar {
public String str="";
public boolean sayi=false;
public boolean alfa=false;
public boolean lastalfa=false;
public boolean lastdigit=false;
 public SadeceSayilar(){}
    public void numberDoubleFloat(char evt, javax.swing.JFormattedTextField textFormat)
    {
     if(!Character.isDigit(evt)&&(int)evt!=8&&(int)evt!=10&&(int)evt!=127&&(int)evt!=65535){
     JOptionPane.showMessageDialog(textFormat, "Lütfen Sayısal Değerler Giriniz.");
     textFormat.setText("");
     }
    }
    public void numberInteger(char evt, javax.swing.JTextField textFormat)
    {
     if(!Character.isDigit(evt)&&(int)evt!=8&&(int)evt!=10&&(int)evt!=127&&(int)evt!=65535){
     JOptionPane.showMessageDialog(textFormat, "Lütfen Sayısal Değerler Giriniz.");
     textFormat.setText("");
     }
    }
    public void plaka(char evt,javax.swing.JTextField textFormat)
    {        
       if(Character.isDigit(evt))
        {
        sayi=true;
        lastdigit=true;
        lastalfa=false;
        }
       if(Character.isAlphabetic(evt))
        {
        lastdigit=false;
        alfa=true;
        lastalfa=true;
        }
       if(sayi==true && alfa==true)
        {
        str+=" ";
        sayi=false;
        if(lastalfa==true)
        alfa=true;
        else
            alfa=false;
        }
       if((int)evt!=8&&(int)evt!=10&&(int)evt!=127&&(int)evt!=65535)
       {
       str+=evt;
       textFormat.setText(str.toUpperCase());
       }
       if((int)evt==8||(int)evt==127){
              str="";
       textFormat.setText("");
        sayi=false;
        alfa=false;
       }
    }
}