package com.eryansky.fastweixin.api.entity;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * @author 温春平@wencp wencp@jx.tobacco.gov.cn
 * @date 2016-03-15
 */
public class UserRead extends BaseDataCube {

    @JSONField(name = "int_page_read_user")
    private Integer intPageReadUser;
    @JSONField(name = "int_page_read_count")
    private Integer intPageReadCount;
    @JSONField(name = "ori_page_read_user")
    private Integer oriPageReadUser;
    @JSONField(name = "ori_page_read_count")
    private Integer oriPageReadCount;
    @JSONField(name = "share_user")
    private Integer shareUser;
    @JSONField(name = "share_count")
    private Integer shareCount;
    @JSONField(name = "add_to_fav_user")
    private Integer addToFavUser;
    @JSONField(name = "add_to_fav_count")
    private Integer addToFavCount;

    public Integer getIntPageReadUser() {
        return intPageReadUser;
    }

    public UserRead setIntPageReadUser(Integer intPageReadUser) {
        this.intPageReadUser = intPageReadUser;
        return this;
    }

    public Integer getIntPageReadCount() {
        return intPageReadCount;
    }

    public UserRead setIntPageReadCount(Integer intPageReadCount) {
        this.intPageReadCount = intPageReadCount;
        return this;
    }

    public Integer getOriPageReadUser() {
        return oriPageReadUser;
    }

    public UserRead setOriPageReadUser(Integer oriPageReadUser) {
        this.oriPageReadUser = oriPageReadUser;
        return this;
    }

    public Integer getOriPageReadCount() {
        return oriPageReadCount;
    }

    public UserRead setOriPageReadCount(Integer oriPageReadCount) {
        this.oriPageReadCount = oriPageReadCount;
        return this;
    }

    public Integer getShareUser() {
        return shareUser;
    }

    public UserRead setShareUser(Integer shareUser) {
        this.shareUser = shareUser;
        return this;
    }

    public Integer getShareCount() {
        return shareCount;
    }

    public UserRead setShareCount(Integer shareCount) {
        this.shareCount = shareCount;
        return this;
    }

    public Integer getAddToFavUser() {
        return addToFavUser;
    }

    public UserRead setAddToFavUser(Integer addToFavUser) {
        this.addToFavUser = addToFavUser;
        return this;
    }

    public Integer getAddToFavCount() {
        return addToFavCount;
    }

    public UserRead setAddToFavCount(Integer addToFavCount) {
        this.addToFavCount = addToFavCount;
        return this;
    }
}
