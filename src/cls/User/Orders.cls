/// 
Class User.Orders Extends %DeepSee.CubeDefinition [ DependsOn = Analytics.Order, ProcedureBlock ]
{

/// Cube definition from Architect.
XData Cube [ XMLNamespace = "http://www.intersystems.com/deepsee" ]
{
<cube xmlns="http://www.intersystems.com/deepsee" name="Orders" displayName="Orders" disabled="false" abstract="false" sourceClass="Analytics.Order" buildRestriction="UniversalServiceDesc is not null and ((InProgress=1 and Completed=1) or canceled=1)" countMeasureName="%COUNT" bucketSize="8" bitmapChunkInMemory="false" precompute="0" disableListingGroups="false" enableSqlRestrict="false">
  <dimension name="RequestDT" displayName="Request Time" disabled="false" hasAll="false" allCaption="All OrderRequestDateTime" allDisplayName="OrderRequestDateTime" sourceProperty="OrderRequestDateTime" type="time" calendar="gregorian" iKnowType="entity" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="Year" displayName="Year" disabled="false" factName="DxReqDTY" timeFunction="Year" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Quarter" displayName="Quarter" disabled="false" factName="DxReqDTQ" timeFunction="QuarterYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Month" displayName="Month" disabled="false" factName="DxReqDTM" timeFunction="MonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Day" displayName="Day" disabled="false" factName="DxReqDTD" timeFunction="DayMonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Hour" displayName="Hour" disabled="false" factName="DxReqDTH" timeFunction="HourNumber" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Minute" displayName="Minute" disabled="false" factName="DxReqDTMin" timeFunction="MinuteNumber" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="ActualRequestDT" displayName="ActualRequestDT" disabled="false" hasAll="false" allCaption="All ActualOrderRequestDateTime" allDisplayName="ActualOrderRequestDateTime" sourceProperty="ActualOrderRequestDateTime" type="time" calendar="gregorian" iKnowType="entity" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="Year" displayName="Year" disabled="false" factName="DxActualReqDTY" timeFunction="Year" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Quarter" displayName="Quarter" disabled="false" factName="DxActualReqDTQ" timeFunction="QuarterYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Month" displayName="Month" disabled="false" factName="DxActualReqDTM" timeFunction="MonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Day" displayName="Day" disabled="false" factName="DxActualReqDTD" timeFunction="DayMonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Hour" displayName="Hour" disabled="false" factName="DxActualReqDTH" timeFunction="HourNumber" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Minute" displayName="Minute" disabled="false" factName="DxActualReqDTMin" timeFunction="MinuteNumber" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="CancelDT" displayName="CancelDT" disabled="false" hasAll="false" allCaption="All ActualCanceledDateTime" allDisplayName="ActualCanceledDateTime" sourceProperty="ActualCanceledDateTime" type="time" calendar="gregorian" iKnowType="entity" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="Year" displayName="Year" disabled="false" factName="DxCancelDTY" timeFunction="Year" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Quarter" displayName="Quarter" disabled="false" factName="DxCancelDTQ" timeFunction="QuarterYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Month" displayName="Month" disabled="false" factName="DxCancelDTM" timeFunction="MonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Day" displayName="Day" disabled="false" factName="DxCancelDTD" timeFunction="DayMonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Hour" displayName="Hour" disabled="false" factName="DxCancelDTH" timeFunction="HourNumber" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Minute" displayName="Minute" disabled="false" factName="DxCancelDTMin" timeFunction="MinuteNumber" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="CompleteDT" displayName="CompleteDT" disabled="false" hasAll="false" allCaption="All ActualCompleteDateTime" allDisplayName="ActualCompleteDateTime" sourceProperty="ActualCompleteDateTime" type="time" calendar="gregorian" iKnowType="entity" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="Year" displayName="Year" disabled="false" factName="DxCompleteDTY" timeFunction="Year" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Quarter" displayName="Quarter" disabled="false" factName="DxCompleteDTQ" timeFunction="QuarterYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Month" displayName="Month" disabled="false" factName="DxCompleteDTM" timeFunction="MonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Day" displayName="Day" disabled="false" factName="DxCompleteDTD" timeFunction="DayMonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Hour" displayName="Hour" disabled="false" factName="DxCompleteDTH" timeFunction="HourNumber" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Minute" displayName="Minute" disabled="false" factName="DxCompleteDTMin" timeFunction="MinuteNumber" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="InProgressDT" displayName="InProgressDT" disabled="false" hasAll="false" allCaption="All ActualInProgressDateTime" allDisplayName="ActualInProgressDateTime" sourceProperty="ActualInProgressDateTime" type="time" calendar="gregorian" iKnowType="entity" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="Year" displayName="Year" disabled="false" factName="DxInProgDTY" timeFunction="Year" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Quarter" displayName="Quarter" disabled="false" factName="DxInProgDTQ" timeFunction="QuarterYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Month" displayName="Month" disabled="false" factName="DxInProgDTM" timeFunction="MonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Day" displayName="Day" disabled="false" factName="DxInProgDTD" timeFunction="DayMonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Hour" displayName="Hour" disabled="false" factName="DxInProgDTH" timeFunction="HourNumber" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
      <level name="Minute" displayName="Minute" disabled="false" factName="DxInProgDTMin" timeFunction="MinuteNumber" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="Canceled" disabled="false" hasAll="false" allCaption="All Canceled" allDisplayName="Canceled" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="Canceled" disabled="false" sourceProperty="Canceled" factName="DxCanceled" list="false" nullReplacement="0" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="Completed" disabled="false" hasAll="false" allCaption="All Completed" allDisplayName="Completed" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="Completed" disabled="false" sourceProperty="Completed" factName="DxCompleted" list="false" nullReplacement="0" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="InProgress" disabled="false" hasAll="false" allCaption="All InProgress1" allDisplayName="InProgress1" type="data" calendar="gregorian" iKnowType="entity" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="InProgress" disabled="false" sourceProperty="InProgress" factName="DxInProgress" list="false" nullReplacement="0" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="RequestLocation" disabled="false" hasAll="false" allCaption="All OrderRequestLocation" allDisplayName="OrderRequestLocation" type="data" calendar="gregorian" iKnowType="entity" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="RequestLocation" disabled="false" sourceProperty="OrderRequestLocation" factName="DxRequestLocation" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="RequestingDoc" disabled="false" hasAll="false" allCaption="All OrderRequestDoctorClinicalName" allDisplayName="OrderRequestDoctorClinicalName" type="data" calendar="gregorian" iKnowType="entity" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="RequestingDoc" disabled="false" sourceProperty="OrderRequestDoctorClinicalName" factName="DxRequestingDoc" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="PatientClass" disabled="false" hasAll="false" allCaption="All PatientClass" allDisplayName="PatientClass" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="PatientClass" disabled="false" sourceExpression="$S($zcvt(%source.PatientClass,&quot;U&quot;)=&quot;E&quot;:&quot;Emergency&quot;,$zcvt(%source.PatientClass,&quot;U&quot;)=&quot;I&quot;:&quot;Inpatient&quot;,$zcvt(%source.PatientClass,&quot;U&quot;)=&quot;O&quot;:&quot;Outpatient&quot;,$zcvt(%source.PatientClass,&quot;U&quot;)=&quot;P&quot;:&quot;Preadmit&quot;,1:&quot;Undefined&quot;)" factName="DxPatientClass" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="LabTest" disabled="false" hasAll="false" allCaption="All UniversalServiceDesc" allDisplayName="UniversalServiceDesc" type="data" calendar="gregorian" iKnowType="entity" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="LabTest" disabled="false" sourceProperty="UniversalServiceDesc" factName="DxLabTest" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="CancelingSystem" disabled="false" hasAll="false" allCaption="All CancelingSystem" allDisplayName="CancelingSystem" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="CancelingSystem" disabled="false" sourceProperty="CancelingSystem" factName="DxCancelSys" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="InProgressSystem" disabled="false" hasAll="false" allCaption="All InProgressSystem" allDisplayName="InProgressSystem" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="InProgressSystem" disabled="false" sourceProperty="InProgressSystem" factName="DxInProgSys" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="ExamGroup" disabled="false" hasAll="false" allCaption="All ExamGroup" allDisplayName="ExamGroup" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="ExamGroup" disabled="false" sourceExpression="%cube.GetLabTestType(($extract(%source.UniversalServiceFillerId,1,9)))" factName="DxExamGrp" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="SLACompliance" disabled="false" hasAll="false" allCaption="All SLACompliance" allDisplayName="SLACompliance" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="SLACompliance" disabled="false" sourceExpression="$S((%cube.GetSLATarget(($extract(%source.UniversalServiceFillerId,1,9)),$zcvt(%source.PatientClass,&quot;U&quot;),&quot;L&quot;))-%source.FromInProgressToCompleteTime&gt;0:&quot;UnderSLA&quot;,1:&quot;OverSLA&quot;)" factName="DxSLACompliance" list="false" useDisplayValue="true" useAsFilter="true" hidden="false">
      </level>
    </hierarchy>
  </dimension>
  <measure name="Orders" displayName="Orders" disabled="false" sourceProperty="OrderId" factName="MxOrders" aggregate="COUNT" type="string" hidden="false" searchable="false">
  </measure>
  <measure name="AVGInProgressToComplete" disabled="false" sourceProperty="FromInProgressToCompleteTime" factName="MxAvgIPtoCM" aggregate="AVG" type="number" hidden="false" searchable="false">
  </measure>
  <measure name="AVGOrderToCancel" disabled="false" sourceProperty="FromOrderToCancelTime" factName="MxAvgNWtoCA" aggregate="AVG" type="number" hidden="false" searchable="false">
  </measure>
  <measure name="AVGOrderToInProgress" disabled="false" sourceProperty="FromOrderToInProgressTime" factName="MxAvgNwtoIP" aggregate="AVG" type="number" hidden="false" searchable="false">
  </measure>
  <measure name="MAXInProgressToComplete" disabled="false" sourceProperty="FromInProgressToCompleteTime" factName="MxMaxIPtoCM" aggregate="MAX" type="number" hidden="false" searchable="false">
  </measure>
  <measure name="MINInProgressToComplete" disabled="false" sourceProperty="FromInProgressToCompleteTime" factName="MxMinIPtoCM" aggregate="MIN" type="number" hidden="false" searchable="false">
  </measure>
  <measure name="MAXOrderToCancel" disabled="false" sourceProperty="FromOrderToCancelTime" factName="MxMaxNWtoCA" aggregate="MAX" type="number" hidden="false" searchable="false">
  </measure>
  <measure name="MINOrderToCancel" disabled="false" sourceProperty="FromOrderToCancelTime" factName="MxMinNWtoCA" aggregate="MIN" type="number" hidden="false" searchable="false">
  </measure>
  <measure name="MAXOrderToInProgress" disabled="false" sourceProperty="FromOrderToInProgressTime" factName="MxMaxNWtoIP" aggregate="MAX" type="number" hidden="false" searchable="false">
  </measure>
  <measure name="MINOrderToInProgress" disabled="false" sourceProperty="FromOrderToInProgressTime" factName="MxMinNWtoIP" aggregate="MIN" type="number" hidden="false" searchable="false">
  </measure>
  <measure name="AVGOrderToComplete" disabled="false" sourceExpression="(%source.FromOrderToInProgressTime)+(%source.FromInProgressToCompleteTime)" factName="MxAvgNWtoCM" aggregate="AVG" type="number" hidden="false" searchable="false">
  </measure>
  <measure name="SLA" disabled="false" sourceExpression="%cube.GetSLATarget(($extract(%source.UniversalServiceFillerId,1,9)),$zcvt(%source.PatientClass,&quot;U&quot;),&quot;L&quot;)" factName="MxSLA" aggregate="AVG" type="number" hidden="false" searchable="false" formatString="###,###">
  </measure>
  <measure name="InSLA" disabled="false" sourceExpression="$S((%cube.GetSLATarget(($extract(%source.UniversalServiceFillerId,1,9)),$zcvt(%source.PatientClass,&quot;U&quot;),&quot;L&quot;))-(%source.FromInProgressToCompleteTime)&gt;=0:1,1:0)" factName="MxInSLA" aggregate="SUM" type="number" hidden="false" searchable="false" formatString="###,###">
  </measure>
  <measure name="OverSLA" disabled="false" sourceExpression="$S((%cube.GetSLATarget(($extract(%source.UniversalServiceFillerId,1,9)),$zcvt(%source.PatientClass,&quot;U&quot;),&quot;L&quot;))-(%source.FromInProgressToCompleteTime)&lt;0:1,1:0)" factName="MxOverSLA" aggregate="SUM" type="number" hidden="false" searchable="false" formatString="###,###">
  </measure>
  <calculatedMember name="SLADiff" disabled="false" dimension="Measures" valueExpression="MEASURES.[SLA] - MEASURES.[AVGInProgressToComplete]" formatString="###,###" hidden="false">
  </calculatedMember>
  <calculatedMember name="SLADiffPctg" disabled="false" dimension="Measures" valueExpression="(MEASURES.[SLA] - MEASURES.[AVGInProgressToComplete])/MEASURES.[SLA]" formatString="##.##;##.##;;;" hidden="false">
  </calculatedMember>
  <calculatedMember name="InSLAPctg" disabled="false" dimension="Measures" valueExpression="MEASURES.[InSLA]/MEASURES.[Orders]" formatString="##.##;##.##;;;" hidden="false">
  </calculatedMember>
  <listing name="OrderDetailList" disabled="false" listingType="table" fieldList="%ID,OrderGroupId,UniversalServiceDesc,ActualOrderRequestDateTime,InProgress,ActualInProgressDateTime,InProgressSystem,Completed,ActualCompleteDateTime,Canceled,ActualCanceledDateTime,CancelingSystem,OrderEnteringLocation,OrderRequestLocation,OrderRequestDoctorClinicalName,PatientBannerId,MessageId,FromOrderToInProgressTime,FromInProgressToCompleteTime,FromOrderToCancelTime">
  </listing>
</cube>
}

/// used as expression for lab test grouping
ClassMethod GetLabTestType(labTestCode As %String) As %String
{
	s tLabTestCode=$g(labTestCode)
	q:(""=tLabTestCode) "Undefined"
    
	&sql(select DataValue into :tLabTestType from Ens_Util.Lookuptable where TableName='OrderCategory' and KeyName=:tLabTestCode)
	
	s:(""=$g(tLabTestType)) tLabTestType="Undefined"
	    
	q tLabTestType
}

/// used as expression for target/limit SLA 
ClassMethod GetSLATarget(labTestGroupCode As %String, patientClass As %String, prio As %String) As %Integer
{
	s tLabTestGroupCode=$g(labTestGroupCode)
	s tPatientClass=$g(patientClass)
	s tPrio=$g(prio)
	s ^zRic($zh)="tLabTestGroupCode: "_tLabTestGroupCode_" tPatientClass: "_tPatientClass_" tPrio: "_tPrio
	q:((""=tLabTestGroupCode)||(""=tPatientClass)||(""=tPrio)) ""
	q:("P"=tPatientClass) 1440
    
	&sql(select target into :tTarget from Analytics.SLA where ExamGroupCode=:tLabTestGroupCode and OrderPrio=:tPrio and PatientClass=:tPatientClass and StartDate<=CURRENT_DATE and (EndDate>=CURRENT_DATE or EndDate is null))
	
	s:(""=$g(tTarget)) tTarget=""
	    
	q tTarget
}

Parameter DOMAIN;

}

