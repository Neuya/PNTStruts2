package action;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import static com.opensymphony.xwork2.Action.SUCCESS;

public class ajouterMatch extends Environnement {

    private String sport;
    private String equipe1;
    private String equipe2;
    private String date;

    public void setSport(String sport) {
        this.sport = sport;
    }

    public void setEquipe1(String equipe1) {
        this.equipe1 = equipe1;
    }

    public void setEquipe2(String equipe2) {
        this.equipe2 = equipe2;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String ajoutMatch() throws Exception {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
        LocalDateTime dateTime = LocalDateTime.parse(date, formatter);
        getFacadeParis().ajouterMatch(getUtilisateur().getLogin(),sport,equipe1,equipe2,dateTime);
        return SUCCESS;
    }
}
