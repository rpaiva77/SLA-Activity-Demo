Class Analytics.StorageRequestMsg Extends Ens.Request
{

Property MessageId As %String;

// Patient Data

Property PatientBannerId As %String;

Property PatientRowId As %String;

Property PatientURN As %String;

Property PatientGroup As %String;

Property PatientClass As %String;

Property PatientVisitLocation As %String;

// Order Request Data

Property ActualOrderRequestDateTime As %TimeStamp;

Property OrderRequestDateTime As %TimeStamp;

Property ActualOrderRequestDateTimeDiff As %Integer;

Property OrderRequestDoctorId As %String;

Property OrderRequestDoctorClinicalName As %String;

Property OrderEnteringLocation As %String;

Property OrderRequestLocation As %String;

Property OrderGroupId As %String;

Property OrderId As %String;

Property UniversalServicePlacerId As %String;

Property UniversalServiceFillerId As %String;

Property UniversalServiceDesc As %String;

// Order Progress

Property InProgress As %String;

Property ActualInProgressDateTime As %TimeStamp;

Property FromOrderToInProgressTime As %Integer;

Property InProgressDateTime As %TimeStamp;

Property InProgressSystem As %String;

// Order Canceling

Property Canceled As %String;

Property ActualCanceledDateTime As %TimeStamp;

Property FromOrderToCancelTime As %Integer;

Property CanceledDateTime As %TimeStamp;

Property CancelingSystem As %String;

// Order Completion

Property Completed As %String;

Property ActualCompleteDateTime As %TimeStamp;

Property FromInProgressToCompleteTime As %Integer;

Property CompleteDateTime As %TimeStamp;

Storage Default
{
<Data name="StorageRequestMsgDefaultData">
<Subscript>"StorageRequestMsg"</Subscript>
<Value name="1">
<Value>MessageId</Value>
</Value>
<Value name="2">
<Value>PatientBannerId</Value>
</Value>
<Value name="3">
<Value>PatientRowId</Value>
</Value>
<Value name="4">
<Value>PatientURN</Value>
</Value>
<Value name="5">
<Value>PatientGroup</Value>
</Value>
<Value name="6">
<Value>PatientClass</Value>
</Value>
<Value name="7">
<Value>PatientVisitLocation</Value>
</Value>
<Value name="8">
<Value>OrderRequestMsgId</Value>
</Value>
<Value name="9">
<Value>ActualOrderRequestDateTime</Value>
</Value>
<Value name="10">
<Value>OrderRequestDateTime</Value>
</Value>
<Value name="11">
<Value>OrderRequestDoctorId</Value>
</Value>
<Value name="12">
<Value>OrderRequestDoctorClinicalName</Value>
</Value>
<Value name="13">
<Value>OrderEnteringLocation</Value>
</Value>
<Value name="14">
<Value>OrderRequestLocation</Value>
</Value>
<Value name="15">
<Value>OrderGroupId</Value>
</Value>
<Value name="16">
<Value>OrderId</Value>
</Value>
<Value name="17">
<Value>UniversalServicePlacerId</Value>
</Value>
<Value name="18">
<Value>UniversalServiceFillerId</Value>
</Value>
<Value name="19">
<Value>UniversalServiceDesc</Value>
</Value>
<Value name="20">
<Value>InProgress</Value>
</Value>
<Value name="21">
<Value>ActualInProgressDateTime</Value>
</Value>
<Value name="22">
<Value>InProgressDateTime</Value>
</Value>
<Value name="23">
<Value>InProgressSystem</Value>
</Value>
<Value name="24">
<Value>Canceled</Value>
</Value>
<Value name="25">
<Value>ActualCanceledDateTime</Value>
</Value>
<Value name="26">
<Value>CanceledDateTime</Value>
</Value>
<Value name="27">
<Value>CancelingSystem</Value>
</Value>
<Value name="28">
<Value>Completed</Value>
</Value>
<Value name="29">
<Value>ActualCompleteDateTime</Value>
</Value>
<Value name="30">
<Value>CompleteDateTime</Value>
</Value>
<Value name="31">
<Value>ActualOrderRequestDateTimeDiff</Value>
</Value>
<Value name="32">
<Value>FromOrderToInProgressTime</Value>
</Value>
<Value name="33">
<Value>FromInProgressToCompleteTime</Value>
</Value>
<Value name="34">
<Value>FromOrderToCancelTime</Value>
</Value>
</Data>
<DefaultData>StorageRequestMsgDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

