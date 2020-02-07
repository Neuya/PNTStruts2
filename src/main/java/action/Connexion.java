package action;

import facade.exceptions.InformationsSaisiesIncoherentesException;
import facade.exceptions.UtilisateurDejaConnecteException;
import modele.Utilisateur;

import javax.rmi.CORBA.Util;

public class Connexion extends Environnement{
    private String pseudo;
    private String password;

    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String execute(){
        try {
            Utilisateur utilisateur = getFacadeParis().connexion(this.pseudo, this.password);
            getSession().put("utilisateur", utilisateur);
        }
        catch(UtilisateurDejaConnecteException udc)
        {
            addFieldError("pseudo",getText("connexion.dejaConnecte" ));
            return INPUT;
        }
        catch(InformationsSaisiesIncoherentesException isie)
        {
            addFieldError("pseudo",getText("connexion.infoIncoherente"));
            return INPUT;
        }
        return SUCCESS;
    }

    public String deconnexion() throws Exception {
        getFacadeParis().deconnexion(getUtilisateur().getLogin());
        getSession().remove("utilisateur");
        return SUCCESS;
    }
}
