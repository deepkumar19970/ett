package com.app.utility;

public class DataTypeUtility {

    public  static  Long getForeignKeyValue(Object o){

        Long value=null;

        if(o instanceof String){
          if(o!=null && o.toString().trim().length()>0){
              value = Long.parseLong(o.toString());
          }
        }
        if(value!=null && value<1l){
           value=null;
        }
        return value;
    }

    public  static  String stringValue(Object o){

        if(o instanceof String){
            if(o!=null && o.toString().trim().length()>0){
               return o.toString().trim();
            }
        }
        return "";
    }
}
