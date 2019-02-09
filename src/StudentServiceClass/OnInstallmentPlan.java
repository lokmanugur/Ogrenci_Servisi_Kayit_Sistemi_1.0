/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StudentServiceClass;
/**
 *
 * @author Administrator
 */
public class OnInstallmentPlan 
{ 
 public boolean flag=true;
 public int cnt=0;
 private double taksitpesin;
 private double taksit;
 public void installments(Object toplam,Object pesin, Object taksay)
  {
//       top=((Number)toplam).doubleValue();
//       pes=((Number)pesin).doubleValue();
//       tak=((Number)taksay).intValue();
      
       taksitpesin = ((Number)toplam).doubleValue()-((Number)pesin).doubleValue();
      double say2 =taksitpesin/((Number)taksay).intValue();
      double say3=say2%10;
      if(say3==0){
      taksit=say2;
      }
      else
      {
      taksit = (say2-say3)+10;}
        }
    public double getTaksitpesin() {
        return taksitpesin;
    }

    public double getTaksit() {
        return taksit;
    }
    
  public double installmentonebyone(Object tutar1,Object taksit1)
  {
      double tutar=((Number)tutar1).doubleValue();
      double taksit=((Number)taksit1).doubleValue();
      double taksitkalanmiktar=tutar-taksit;
      if(taksitkalanmiktar==0){
          flag=false;
          return tutar;
      } 
      else
      {
       return taksitkalanmiktar;
      }
  }
  public int taksitCounter(){
          cnt++;
      return cnt;
  }
}
