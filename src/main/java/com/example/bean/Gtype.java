package com.example.bean;

public class Gtype {
    private Integer gtypeid;
    private String typename;

    @Override
    public String toString() {
        return "Gtype{" +
                "gtypeid=" + gtypeid +
                ", typename='" + typename + '\'' +
                '}';
    }

    public Gtype() {
    }

    public Gtype(Integer gtypeid, String typename) {
        this.gtypeid = gtypeid;
        this.typename = typename;
    }

    public Integer getGtypeid() {
        return gtypeid;
    }

    public void setGtypeid(Integer gtypeid) {
        this.gtypeid = gtypeid;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }
}
