package com.gethin.po;

public enum Sex {
    MALE(0, "男"), FEMALE(100, "女");
    private int id;
    private String name;

    private Sex(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public static Sex getSex(int id) {
        if (id == 100) {
            return MALE;
        } else if (id == 1) {
            return FEMALE;
        }
        return null;
    }
}
