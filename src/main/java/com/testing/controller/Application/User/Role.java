package com.testing.controller.Application.User;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    TEACHER, ADMIN;

    @Override
    public String getAuthority() {
        return name();
    }
}
