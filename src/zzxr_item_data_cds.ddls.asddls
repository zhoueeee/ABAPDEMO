@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'item 01'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zzxr_item_data_cds
  as select from zzxtest_001
  association to parent zzxr_main_data_cds as _head on $projection.CostTypeId = _head.cost_type_id
{
  key zzxtest_001.cost_type_id  as CostTypeId,
  key zzxtest_001.vendor        as Vendor,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      zzxtest_001.weekvalue     as Weekvalue,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      zzxtest_001.curryearvalue as Curryearvalue,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      zzxtest_001.lastyearvalue as Lastyearvalue,
      zzxtest_001.currency_code as CurrencyCode,

      _head
}
