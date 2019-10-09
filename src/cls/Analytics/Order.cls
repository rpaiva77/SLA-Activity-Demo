Class Analytics.Order Extends (%Persistent, %XML.Adaptor) [ SqlTableName = Orders ]
{

Parameter DSTIME = "auto";

Index OrderIdIDX On OrderId [ IdKey, Unique ];

Index PatientRowIdIDX On PatientRowId;

// MessageIDs

Property MessageId As %ListOfDataTypes [ SqlColumnNumber = 5 ];

// Patient Data

Property PatientBannerId As %String [ SqlColumnNumber = 10 ];

Property PatientRowId As %String [ SqlColumnNumber = 15 ];

Property PatientURN As %String [ SqlColumnNumber = 20 ];

Property PatientGroup As %String [ SqlColumnNumber = 25 ];

Property PatientClass As %String [ SqlColumnNumber = 30 ];

Property PatientVisitLocation As %String [ SqlColumnNumber = 35 ];

// Order Request Data

Property ActualOrderRequestDateTime As %TimeStamp [ SqlColumnNumber = 40 ];

Property OrderRequestDateTime As %TimeStamp [ SqlColumnNumber = 45 ];

Property ActualOrderRequestDateTimeDiff As %Integer [ SqlColumnNumber = 46 ];

Property OrderRequestDoctorId As %String [ SqlColumnNumber = 50 ];

Property OrderRequestDoctorClinicalName As %String [ SqlColumnNumber = 55 ];

Property OrderEnteringLocation As %String [ SqlColumnNumber = 60 ];

Property OrderRequestLocation As %String [ SqlColumnNumber = 65 ];

Property OrderGroupId As %String [ SqlColumnNumber = 70 ];

Property OrderId As %String [ SqlColumnNumber = 75 ];

Property UniversalServicePlacerId As %String [ SqlColumnNumber = 80 ];

Property UniversalServiceFillerId As %String [ SqlColumnNumber = 85 ];

Property UniversalServiceDesc As %String [ SqlColumnNumber = 90 ];

// Order Progress

Property InProgress As %Boolean [ InitialExpression = 0, SqlColumnNumber = 95 ];

Property ActualInProgressDateTime As %TimeStamp [ SqlColumnNumber = 100 ];

Property FromOrderToInProgressTime As %Integer [ SqlColumnNumber = 101 ];

Property InProgressDateTime As %TimeStamp [ SqlColumnNumber = 105 ];

Property InProgressSystem As %String [ SqlColumnNumber = 110 ];

// Order Canceling

Property Canceled As %Boolean [ InitialExpression = 0, SqlColumnNumber = 115 ];

Property ActualCanceledDateTime As %TimeStamp [ SqlColumnNumber = 120 ];

Property FromOrderToCancelTime As %Integer [ SqlColumnNumber = 121 ];

Property CanceledDateTime As %TimeStamp [ SqlColumnNumber = 125 ];

Property CancelingSystem As %String [ SqlColumnNumber = 130 ];

// Order Completion

Property Completed As %Boolean [ InitialExpression = 0, SqlColumnNumber = 135 ];

Property ActualCompleteDateTime As %TimeStamp [ SqlColumnNumber = 140 ];

Property FromInProgressToCompleteTime As %Integer [ SqlColumnNumber = 141 ];

Property CompleteDateTime As %TimeStamp [ SqlColumnNumber = 145 ];

Storage Default
{
<Data name="OrderDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SessionId</Value>
</Value>
<Value name="3">
<Value>PatientBannerId</Value>
</Value>
<Value name="4">
<Value>PatientRowId</Value>
</Value>
<Value name="5">
<Value>PatientURN</Value>
</Value>
<Value name="6">
<Value>PatientGroup</Value>
</Value>
<Value name="7">
<Value>PatientClass</Value>
</Value>
<Value name="8">
<Value>PatientVisitLocation</Value>
</Value>
<Value name="9">
<Value>OrderRequestMsgId</Value>
</Value>
<Value name="10">
<Value>ActualOrderRequestDateTime</Value>
</Value>
<Value name="11">
<Value>OrderRequestDateTime</Value>
</Value>
<Value name="12">
<Value>OrderRequestDoctorId</Value>
</Value>
<Value name="13">
<Value>OrderRequestDoctorClinicalName</Value>
</Value>
<Value name="14">
<Value>OrderEnteringLocation</Value>
</Value>
<Value name="15">
<Value>OrderRequestLocation</Value>
</Value>
<Value name="16">
<Value>OrderGroupId</Value>
</Value>
<Value name="17">
<Value>OrderId</Value>
</Value>
<Value name="18">
<Value>UniversalServicePlacerId</Value>
</Value>
<Value name="19">
<Value>UniversalServiceFillerId</Value>
</Value>
<Value name="20">
<Value>UniversalServiceDesc</Value>
</Value>
<Value name="21">
<Value>InProgress</Value>
</Value>
<Value name="22">
<Value>ActualInProgressDateTime</Value>
</Value>
<Value name="23">
<Value>InProgressDateTime</Value>
</Value>
<Value name="24">
<Value>InProgressSystem</Value>
</Value>
<Value name="25">
<Value>Canceled</Value>
</Value>
<Value name="26">
<Value>ActualCanceledDateTime</Value>
</Value>
<Value name="27">
<Value>CanceledDateTime</Value>
</Value>
<Value name="28">
<Value>CancelingSystem</Value>
</Value>
<Value name="29">
<Value>Completed</Value>
</Value>
<Value name="30">
<Value>ActualCompleteDateTime</Value>
</Value>
<Value name="31">
<Value>CompleteDateTime</Value>
</Value>
<Value name="32">
<Value>MessageId</Value>
</Value>
<Value name="33">
<Value>ActualOrderRequestDateTimeDiff</Value>
</Value>
<Value name="34">
<Value>FromOrderToInProgressTime</Value>
</Value>
<Value name="35">
<Value>FromInProgressToCompleteTime</Value>
</Value>
<Value name="36">
<Value>FromOrderToCancelTime</Value>
</Value>
</Data>
<DataLocation>^Analytics.OrderD</DataLocation>
<DefaultData>OrderDefaultData</DefaultData>
<IdLocation>^Analytics.OrderD</IdLocation>
<IndexLocation>^Analytics.OrderI</IndexLocation>
<StreamLocation>^Analytics.OrderS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

