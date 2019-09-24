package com.company.config;

import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * 〈自定义无加密密码验证〉
 *
 */
public class NoEncryptPasswordEncoder implements PasswordEncoder {

    @Override
    public String encode(CharSequence charSequence) {
        return (String) charSequence;
    }

    @Override
    public boolean matches(CharSequence charSequence, String s) {
        System.out.println(charSequence+"  "+s);
        return s.equals((String) charSequence);
    }
}
