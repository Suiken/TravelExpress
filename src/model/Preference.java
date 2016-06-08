package model;

public class Preference {
    private String userLogin;
    private boolean smoke;
    private boolean phone;
    private boolean email;
    private boolean aircon;
    private boolean animal;
    private boolean suitcase;
    private boolean bicycle;
    private boolean ski;

    public String getUserLogin() {
        return userLogin;
    }

    public void setUserLogin(String userLogin) {
        this.userLogin = userLogin;
    }

    public boolean isSmoke() {
        return smoke;
    }

    public void setSmoke(boolean smoke) {
        this.smoke = smoke;
    }

    public boolean isPhone() {
        return phone;
    }

    public void setPhone(boolean phone) {
        this.phone = phone;
    }

    public boolean isEmail() {
        return email;
    }

    public void setEmail(boolean email) {
        this.email = email;
    }

    public boolean isAircon() {
        return aircon;
    }

    public void setAircon(boolean aircon) {
        this.aircon = aircon;
    }

    public boolean isAnimal() {
        return animal;
    }

    public void setAnimal(boolean animal) {
        this.animal = animal;
    }

    public boolean isSuitcase() {
        return suitcase;
    }

    public void setSuitcase(boolean suitcase) {
        this.suitcase = suitcase;
    }

    public boolean isBicycle() {
        return bicycle;
    }

    public void setBicycle(boolean bicycle) {
        this.bicycle = bicycle;
    }

    public boolean isSki() {
        return ski;
    }

    public void setSki(boolean ski) {
        this.ski = ski;
    }
}
