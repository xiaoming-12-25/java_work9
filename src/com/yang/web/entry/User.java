package com.yang.web.entry;

public class User {
    private int id;
    private String bianhao;
    private String name;
    private String gangwei;
    private String bumen;

    public User() {}
    public User(String bianhao, String name, String gangwei, String bumen) {
        this.bianhao = bianhao;
        this.name = name;
        this.gangwei = gangwei;
        this.bumen = bumen;
    }
    public User(int id, String bianhao, String name, String gangwei, String bumen) {
        this.id = id;
        this.bianhao = bianhao;
        this.name = name;
        this.gangwei = gangwei;
        this.bumen = bumen;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBianhao() {
        return bianhao;
    }

    public void setBianhao(String bianhao) {
        this.bianhao = bianhao;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGangwei() {
        return gangwei;
    }

    public void setGangwei(String gangwei) {
        this.gangwei = gangwei;
    }

    public String getBumen() {
        return bumen;
    }

    public void setBumen(String bumen) {
        this.bumen = bumen;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", bianhao='" + bianhao + '\'' +
                ", name='" + name + '\'' +
                ", gangwei='" + gangwei + '\'' +
                ", bumen='" + bumen + '\'' +
                '}';
    }
}
