package action;

import facade.exceptions.OperationNonAuthoriseeException;
import modele.Pari;

import java.util.Collection;

public class mesParis extends Environnement{

    private long idPariAnnuler;

    public void setIdPariAnnuler(long idPariAnnuler) {
        this.idPariAnnuler = idPariAnnuler;
    }

    public Collection<Pari> getMesParisCourants()
    {
        return getFacadeParis().getMesParis(getUtilisateur().getLogin());
    }

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    public String annulerPari() {
        try {
            getFacadeParis().annulerPari(getUtilisateur().getLogin(), idPariAnnuler);
        }
        catch(OperationNonAuthoriseeException op)
        {
            addFieldError("operationNonAutho",getText(op.getMessage()));
            return INPUT;
        }
        return SUCCESS;
    }
}
