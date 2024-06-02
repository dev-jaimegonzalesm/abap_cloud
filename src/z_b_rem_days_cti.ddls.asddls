@AbapCatalog.sqlViewName: 'ZV_REM_DAYSL_CTI'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remainingdays'
define view z_b_rem_days_cti as select from zrent_cars_cti
{
    key matricula as Matricula,
    marca as Marca,
    dats_days_between(cast($session.system_date as abap.dats), alq_hasta ) as Dias
}
