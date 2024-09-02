@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'item 01'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZZXc_ITEM_DATA_CDS as projection on ZZXR_ITEM_DATA_CDS
{
    key CostTypeId,
    key Vendor,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    Weekvalue,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    Curryearvalue,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    Lastyearvalue,
    CurrencyCode,
    /* Associations */
     _head: redirected to parent ZZXc_main_data_cds
}
