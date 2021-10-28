package com.groupec.retrofitphpapi.models;

import com.google.gson.annotations.SerializedName;


public class Result {

    private Boolean error;
    private String message;
    private User user;

    public Result(Boolean error, String message, User user) {
        this.error = error;
        this.message = message;
        this.user = user;
    }

    public Boolean getError() {
        return error;
    }

    public String getMessage() {
        return message;
    }

    public User getUser() {
        return user;
    }
}