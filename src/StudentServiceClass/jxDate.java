/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StudentServiceClass;

import GUI_Packege.ogrenci.OdemeBilgisiOlustur;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jdesktop.swingx.JXDatePicker;

/**
 *
 * @author Administrator
 jxDate class, increament the month of year when method of class which call getMonth() called.
 * 
 */
public class jxDate {
    JXDatePicker datepicker=new JXDatePicker();
    SimpleDateFormat dateformat = new SimpleDateFormat("dd-MM-yyyy");

public String getDate(JXDatePicker tarihOto)
{
    return dateformat.format(tarihOto.getDate());
}
    
public String getDay(JXDatePicker tarihOto)
{
    String str=dateformat.format(tarihOto.getDate());
    String str2[]=str.split("-");
    int day=Integer.parseInt(str2[0]+1);
    int month=Integer.parseInt(str2[1]);
    int year=Integer.parseInt(str2[2]);
        try {
            String dt = String.valueOf(day)+"-"+String.valueOf(month)+"-"+String.valueOf(year);
            java.util.Date date = dateformat.parse(dt);
            tarihOto.setDate(date);
        } catch (ParseException ex) {
            Logger.getLogger(OdemeBilgisiOlustur.class.getName()).log(Level.SEVERE, null, ex);
        }
    return dateformat.format(tarihOto.getDate());
}
    /**
     * 
     * @param tarihOto 
     * @return 
     */
public String getMonth(JXDatePicker tarihOto)
{
    String str=dateformat.format(tarihOto.getDate());
    String str2[]=str.split("-");
    int day=Integer.parseInt(str2[0]);
    int month=Integer.parseInt(str2[1])+1;
    int year=Integer.parseInt(str2[2]);
        try {
            String dt = String.valueOf(day)+"-"+String.valueOf(month)+"-"+String.valueOf(year);
            java.util.Date date = dateformat.parse(dt);
            tarihOto.setDate(date);
        } catch (ParseException ex) {
            Logger.getLogger(OdemeBilgisiOlustur.class.getName()).log(Level.SEVERE, null, ex);
        }
    return dateformat.format(tarihOto.getDate());
}

public String getYear(JXDatePicker tarihOto)
{
    String str=dateformat.format(tarihOto.getDate());
    String str2[]=str.split("-");
    int day=Integer.parseInt(str2[0]);
    int month=Integer.parseInt(str2[1]);
    int year=Integer.parseInt(str2[2])+1;
        try {
            String dt = String.valueOf(day)+"-"+String.valueOf(month)+"-"+String.valueOf(year);
            java.util.Date date = dateformat.parse(dt);
            tarihOto.setDate(date);
        } catch (ParseException ex) {
            Logger.getLogger(OdemeBilgisiOlustur.class.getName()).log(Level.SEVERE, null, ex);
        }
    return dateformat.format(tarihOto.getDate());
}
public Date dateFormat(Object dt)throws ParseException
    {
        String st=String.valueOf(dt);
        return dateformat.parse(st);
    }
public Date curentDate()
    {
    return datepicker.getLinkDay();
    }
}
