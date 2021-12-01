using {ZAS_OEM_PRODUCT_JTE_SRV as external} from './external/ZAS_OEM_PRODUCT_JTE_SRV.csn';

service Product {

    entity Products as projection on external.ProductSet {
        key Material, key Serialnumber, Description
    } order by
        Serialnumber
    
    action CREATE(Material : Products:Material , Serialnumber : Products:Serialnumber) returns {
        success : Boolean
    };

}
