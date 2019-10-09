Class Analytics.FunctionUtils Extends Ens.Rule.FunctionSet
{

ClassMethod HL7ToODBCDate(value As %String = "") As %String
{
	q $zdt($zdth($e(value,1,8)_" "_$e(value,9,10)_":"_$e(value,11,12)_":"_$e(value,13,14),8,4),3,1)
}

ClassMethod HL7TimeDiff(value1 As %String = "", value2 As %String = "") As %String
{
	q $SYSTEM.SQL.DATEDIFF("mi",$zdt($zdth($e(value1,1,8)_" "_$e(value1,9,10)_":"_$e(value1,11,12)_":"_$e(value1,13,14),8,4),3,1),$zdt($zdth($e(value2,1,8)_" "_$e(value2,9,10)_":"_$e(value2,11,12)_":"_$e(value2,13,14),8,4),3,1))
}

ClassMethod InProgress(statuschange As %String = "", value As %String = "") As %String [ CodeMode = expression, Final ]
{
$S("IP"=statuschange:value,1:"")
}

ClassMethod Canceled(statuschange As %String = "", value As %String = "") As %String [ CodeMode = expression, Final ]
{
$S("OC"=statuschange:value,1:"")
}

ClassMethod Completed(statuschange As %String = "", value As %String = "") As %String [ CodeMode = expression, Final ]
{
$S("CM"=statuschange:value,1:"")
}

}

