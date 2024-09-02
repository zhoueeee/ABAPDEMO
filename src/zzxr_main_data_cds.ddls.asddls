@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'main' 
 
define root view entity zzxr_main_data_cds as select from zzxtest_001
composition[0..*] of zzxr_item_data_cds as _item
association to ZZXR_test_002_cds as _costType on $projection.cost_type_id = _costType.CostTypeId
{
   key zzxtest_001.cost_type_id,
   zzxtest_001.currency_code,
    @Semantics.amount.currencyCode : 'currency_code'
    sum(zzxtest_001.weekvalue) as weekvalue,
    @Semantics.amount.currencyCode : 'currency_code'
    sum(zzxtest_001.curryearvalue) as curryearvalue,
    @Semantics.amount.currencyCode : 'currency_code'
    sum(zzxtest_001.lastyearvalue) as lastyearvalue,
    
    _item,
    _costType
}group by zzxtest_001.cost_type_id,zzxtest_001.currency_code
