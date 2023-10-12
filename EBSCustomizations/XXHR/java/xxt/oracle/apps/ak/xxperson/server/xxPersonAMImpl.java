//comment
//commit
//commit
// Hello
// comment
// New comment
//workitem comment
package xxt.oracle.apps.ak.xxperson.server;
import oracle.apps.fnd.framework.server.*;
import oracle.apps.fnd.framework.*;
import oracle.jbo.Row; 
import oracle.jbo.domain.Number ;

import oracle.apps.fnd.framework.server.OAApplicationModuleImpl;
//  ---------------------------------------------------------------
//  ---    File generated by Oracle Business Components for Java.
//  ---------------------------------------------------------------

public class xxPersonAMImpl extends OAApplicationModuleImpl 
{
  /**
   * 
   * This is the default constructor (do not remove -sample)
   */
  public xxPersonAMImpl()
  {
  }

  /**
   * 
   * Container's getter for xxPersonDetailsVO1
   */
  public xxPersonDetailsVOImpl getxxPersonDetailsVO1()
  {
    return (xxPersonDetailsVOImpl)findViewObject("xxPersonDetailsVO1");
  }

  /**
   * 
   * Sample main for debugging Business Components code using the tester.
   */
  public static void main(String[] args)
  {
    launchTester("xxt.oracle.apps.ak.xxperson.server", "xxPersonAMLocal");
  }


  public void updatePersonMethod( String pAction, String pPersonId)
  {
  try
   {
        OAViewObjectImpl pervo = getxxPersonDetailsVO1();
        String existingWhereClause = pervo.getWhereClause() ;
        pervo.setWhereClauseParams(null);
        pervo.setWhereClause("person_id = :1");
        pervo.setWhereClauseParam(0, new Number(pPersonId));
        pervo.executeQuery();
        pervo.setWhereClauseParams(null);
        pervo.setWhereClause(existingWhereClause);
   }
   catch(Exception exception1)
   {
        throw OAException.wrapperException(exception1);
   }
  }


  public void createPersonMethod ( String pAction, String pPersonId)
  {
  OAViewObjectImpl pervo = getxxPersonDetailsVO1();
  if ( !pervo.isPreparedForExecution())
    pervo.executeQuery();
  Row prow = pervo.createRow();
  pervo.insertRow(prow);
  prow.setNewRowState(Row.STATUS_INITIALIZED) ; 
  }



  public void deletePersonMethod( String pAction, String pPersonId )
  {
  System.out.println("xxDebug inside deletePersonMethod()") ;
  xxPersonDetailsVOImpl pervo = getxxPersonDetailsVO1();
  Row row[]=pervo.getAllRowsInRange();
  for ( int i=0;i<row.length;i++)
  {
  xxPersonDetailsVORowImpl rowi = (xxPersonDetailsVORowImpl)row[i];
  System.out.println("xxDebug Checking to delete personId =>" + rowi.getPersonId());
  if (rowi.getPersonId().toString().equals(pPersonId))
  {
      rowi.remove();
      getOADBTransaction().commit();
      return ;
  }   
  }
  }



  public void savePersonToDatabase()
  {
  getDBTransaction().commit();
  }


  
}

//added comment
