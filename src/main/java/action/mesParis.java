package action;

import modele.Pari;

import java.util.Collection;

public class mesParis extends Environnement{
    public Collection<Pari> getMesParisCourants()
    {
        return getFacadeParis().getMesParis(getUtilisateur().getLogin());
    }

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }
}
