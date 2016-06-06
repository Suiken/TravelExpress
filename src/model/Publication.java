package model;

import java.sql.Date;

public class Publication {
    private String content;
    private int nbPlaces;
    private Date publicationDate;
    private Date runDate;
    private int frequency;
    private String userLogin;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getNbPlaces() {
        return nbPlaces;
    }

    public void setNbPlaces(int nbPlaces) {
        this.nbPlaces = nbPlaces;
    }

    public Date getPublicationDate() {
        return publicationDate;
    }

    public void setPublicationDate(Date publicationDate) {
        this.publicationDate = publicationDate;
    }

    public int getFrequency() {
        return frequency;
    }

    public void setFrequency(int frequency) {
        this.frequency = frequency;
    }

    public Date getRunDate() {
        return runDate;
    }

    public void setRunDate(Date runDate) {
        this.runDate = runDate;
    }

    public String getUser() {
        return userLogin;
    }

    public void setUser(String userLogin) {
        this.userLogin = userLogin;
    }
}
