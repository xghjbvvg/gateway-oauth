package com.company.domain.base;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import java.io.Serializable;
import java.time.Instant;

/**
 * Created by SuperS on 2017/9/25.
 *
 * @author SuperS
 */
@MappedSuperclass
@Data
public class BaseEntity implements Serializable {
   /* @Column(updatable = false, nullable = false)
    private Instant createTime;

    @Column(nullable = false)
    @JsonIgnore
    private Instant updateTime;

    @PrePersist
    public void prePersist() {
        createTime = updateTime = Instant.now();
    }
    @PreUpdate
    public void preUpdate() {
        updateTime = Instant.now();
    }*/
}
