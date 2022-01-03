package com.example.bean;
public class Game {
    private Integer id;
    private  String gname;
    private  String gicon;
    private  String gbi;
    private String gfile;
    private String gtime;
    private String gtype;
    private Integer gviews;


    public Game() {

    }

    public Game(Integer id, String gname, String gicon, String gbi, String gfile, String gtime, String gtype, Integer gviews) {
        this.id = id;
        this.gname = gname;
        this.gicon = gicon;
        this.gbi = gbi;
        this.gfile = gfile;
        this.gtime = gtime;
        this.gtype = gtype;
        this.gviews = gviews;
    }

    @Override
    public String toString() {
        return "Game{" +
                "id=" + id +
                ", gname='" + gname + '\'' +
                ", gicon='" + gicon + '\'' +
                ", gbi='" + gbi + '\'' +
                ", gfile='" + gfile + '\'' +
                ", gtime='" + gtime + '\'' +
                ", gtype='" + gtype + '\'' +
                ", gviews=" + gviews +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public String getGicon() {
        return gicon;
    }

    public void setGicon(String gicon) {
        this.gicon = gicon;
    }

    public String getGbi() {
        return gbi;
    }

    public void setGbi(String gbi) {
        this.gbi = gbi;
    }

    public String getGfile() {
        return gfile;
    }

    public void setGfile(String gfile) {
        this.gfile = gfile;
    }

    public String getGtime() {
        return gtime;
    }

    public void setGtime(String gtime) {
        this.gtime = gtime;
    }

    public String getGtype() {
        return gtype;
    }

    public void setGtype(String gtype) {
        this.gtype = gtype;
    }

    public Integer getGviews() {
        return gviews;
    }

    public void setGviews(Integer gviews) {
        this.gviews = gviews;
    }
}
