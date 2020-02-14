package action;

import modele.Match;

import java.util.Collection;

public class listeMatchs extends Environnement {
    public Collection<Match> getAllMatch()
    {
        return getFacadeParis().getAllMatchs();
    }
}
