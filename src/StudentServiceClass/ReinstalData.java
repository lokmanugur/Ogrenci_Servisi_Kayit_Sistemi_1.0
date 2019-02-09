/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package StudentServiceClass;

import javax.swing.table.DefaultTableModel;

/**
 *
 * @author BLUE
 */
    public class ReinstalData 
    {    
        public void reinstalData(DefaultTableModel model)
        {
        if (model.getRowCount() > 0) 
            {
            for (int i = model.getRowCount() - 1; i > -1; i--) 
                {
                 model.removeRow(i);
                }
             }    
         }
       
     }
