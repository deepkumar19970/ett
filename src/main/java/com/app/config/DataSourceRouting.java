package com.app.config;

import com.app.constants.Branch;
import com.app.constants.BranchContextHolder;
import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

public class DataSourceRouting extends AbstractRoutingDataSource {

    @Override
    protected Object determineCurrentLookupKey() {
        return BranchContextHolder.getBranchContext();
    }

    public void initDatasource(HashMap<Enum,DataSource> sourceHashMap) {
        Map<Object, Object> dataSourceMap = new HashMap<>();
        for(Enum e : sourceHashMap.keySet()){
            dataSourceMap.put(e, sourceHashMap.get(e));
        }
        this.setTargetDataSources(dataSourceMap);
        this.setDefaultTargetDataSource(dataSourceMap.get(Branch.defaults));
    }
}