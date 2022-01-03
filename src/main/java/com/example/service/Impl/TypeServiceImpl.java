package com.example.service.Impl;

import com.example.bean.Gtype;
import com.example.dao.GtypeDao;
import com.example.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TypeServiceImpl implements TypeService {
    @Autowired
    GtypeDao gtypeDao;

    @Override
    public List<Gtype> getTypes() {
        List<Gtype> gtypes = gtypeDao.getGtypes();
        return gtypes;


    }
}
