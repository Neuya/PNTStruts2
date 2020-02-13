package action;

import modele.Match;

public class Parier extends Environnement {

    private long idMatch;
    private Match match;
    private String vainqueur;
    private double montant;

    public void setIdMatch(long idMatch) {
        this.idMatch = idMatch;
    }

    public Match getMatch() {
        return match;
    }

    public void setVainqueur(String vainqueur) {
        this.vainqueur=vainqueur;
    }

    public void setMontant(double montant) {
        this.montant=montant;
    }

    @Override
    public String execute() throws Exception {
        match = getFacadeParis().getMatch(idMatch);
        getSession().put("match",match);
        return SUCCESS;
    }

    public String confirmationParis() throws Exception {
        Match m = (Match) getSession().get("match");
        getFacadeParis().parier(getUtilisateur().getLogin(),m.getIdMatch(),vainqueur,montant);
        return SUCCESS;
    }


}
