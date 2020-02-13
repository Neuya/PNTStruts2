package action;

import modele.Match;

import java.util.Collection;

public class parisOuverts extends Environnement{


    public Collection<Match> getMatchsEnCours()
    {
        return getFacadeParis().getMatchsPasCommences();
    }

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }


}
