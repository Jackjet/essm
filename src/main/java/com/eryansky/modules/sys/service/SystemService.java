/**
 * Copyright (c) 2014-2017 http://www.jfit.com.cn
 * <p>
 * 江西省锦峰软件科技有限公司
 */
package com.eryansky.modules.sys.service;

import com.eryansky.common.orm.entity.Parameter;
import com.eryansky.common.utils.StringUtils;
import com.eryansky.core.orm.mybatis.entity.DataEntity;
import com.eryansky.core.orm.mybatis.service.BaseService;
import com.eryansky.modules.sys.dao.SystemDao;
import com.eryansky.modules.sys.mapper.OrganExtend;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 系统任务
 * @author 温春平@wencp jfwencp@jx.tobacco.gov.cn
 * @date 2017-09-19 
 */
@Service
@Transactional(readOnly = true)
public class SystemService extends BaseService {

    @Autowired
    private SystemDao dao;

    /**
     * 创建organ扩展表
     * @return
     */
    public  int createOrganExtend(){
        return dao.createOrganExtend();
    }

    /**
     * organ表同步到扩展表
     * @return
     */
    public int insertToOrganExtend(){
        return insertToOrganExtend(null);
    }

    /**
     * organ表同步到扩展表
     * @param id 机构ID
     * @return
     */
    public int insertToOrganExtend(String id){
        return dao.insertToOrganExtend(id);
    }

    /**
     * 删除organ扩展表数据
     * @return
     */
    public int deleteOrganExtend(){
        return deleteOrganExtend(null);
    }

    /**
     * 删除organ扩展表数据
     * @param id 机构ID
     * @return
     */
    public int deleteOrganExtend(String id){
        return dao.deleteOrganExtend(id);
    }

    /**
     * 同步数据到organ表
     */
    public void syncOrganToExtend(){
        syncOrganToExtend(null);
    }

    /**
     * 同步数据到organ表
     */
    public void syncOrganToExtend(String id){
        deleteOrganExtend(id);
        insertToOrganExtend(id);
    }

}
