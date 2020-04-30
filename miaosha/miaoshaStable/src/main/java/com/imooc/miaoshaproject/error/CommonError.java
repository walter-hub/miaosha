package com.imooc.miaoshaproject.error;

/**
 * Created by yuqi on 2020/4/13.
 */
public interface CommonError {
    public int getErrCode();
    public String getErrMsg();
    public CommonError setErrMsg(String errMsg);


}
