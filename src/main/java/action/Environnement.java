package action;

import com.opensymphony.xwork2.ActionSupport;
import facade.FacadeParis;
import facade.FacadeParisStaticImpl;
import modele.Utilisateur;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class Environnement extends ActionSupport implements ApplicationAware, SessionAware {

    private FacadeParis facadeParis;
    private Map<String,Object> session;

    public Utilisateur getUtilisateur()
    {
        return (Utilisateur) getSession().get("utilisateur");
    }

    public Map<String,Object> getSession()
    {
        return session;
    }

    public boolean isAdmin()
    {
        return getUtilisateur().isAdmin();
    }

    public FacadeParis getFacadeParis()
    {
        return facadeParis;
    }

    @Override
    public void setApplication(Map<String, Object> map) {
        map.putIfAbsent("facadeParis",new FacadeParisStaticImpl());
        facadeParis = (FacadeParis) map.get("facadeParis");
    }

    @Override
    public void setSession(Map<String, Object> map) {
        session = map;
    }
}
