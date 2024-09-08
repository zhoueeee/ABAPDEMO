@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'item 01'
@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZZXc_ITEM_DATA_CDS as projection on zzxr_item_data_cds
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
     _head: redirected to parent ZZXC_main_data_cds
}
