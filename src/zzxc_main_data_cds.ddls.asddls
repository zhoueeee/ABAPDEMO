@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions:true
@EndUserText.label: 'main'
define root view entity ZZXC_main_data_cds 
provider contract transactional_query   
as projection on zzxr_main_data_cds
{
    key zzxr_main_data_cds.cost_type_id as CostTypeId, 
    @Semantics.amount.currencyCode : 'CurrencyCode'
    zzxr_main_data_cds.weekvalue as Weekvalue,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    zzxr_main_data_cds.curryearvalue as Curryearvalue,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    zzxr_main_data_cds.lastyearvalue as Lastyearvalue,
    
    zzxr_main_data_cds.currency_code as CurrencyCode,
    /* Associations */
    _item:redirected to composition child ZZXc_ITEM_DATA_CDS,
    _costType
}
