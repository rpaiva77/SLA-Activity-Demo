Class Analytics.SLA Extends %Persistent
{

Property ExamGroupCode As %String;

Property ExamGroupDesc As %String;

Property PatientClass As %String;

Property OrderPrio As %String;

Property StartDate As %Date;

Property EndDate As %Date;

Property Target As %Integer;

Index ExamGroupCodeIDX On ExamGroupCode;

Index PatientClassIDX On PatientClass [ Type = bitmap ];

Storage Default
{
<Data name="SLADefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ExamGroupCode</Value>
</Value>
<Value name="3">
<Value>ExamGroupDesc</Value>
</Value>
<Value name="4">
<Value>PatientClass</Value>
</Value>
<Value name="5">
<Value>OrderPrio</Value>
</Value>
<Value name="6">
<Value>Target</Value>
</Value>
<Value name="7">
<Value>StartDate</Value>
</Value>
<Value name="8">
<Value>EndDate</Value>
</Value>
</Data>
<DataLocation>^Analytics.SLAD</DataLocation>
<DefaultData>SLADefaultData</DefaultData>
<IdLocation>^Analytics.SLAD</IdLocation>
<IndexLocation>^Analytics.SLAI</IndexLocation>
<StreamLocation>^Analytics.SLAS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

