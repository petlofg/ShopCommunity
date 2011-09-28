
package com.webshop.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.Action;
/**
 * 
 * @author Petter Löfgren
 */
public class LoginAction extends Action {
    
    @Override
    public ActionForward execute(ActionMapping actionMapping, 
                                ActionForm actionForm,
                                HttpServletRequest httpServletRequest,
                                HttpServletResponse httpServletResponse){
        
//Breakpoint        
        
        return actionMapping.findForward("success");
    }
}
