Class Analytics.OrderStorage Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

Method Upsert(pRequest As Analytics.StorageRequestMsg, Output pResponse As Ens.Response) As %Status
{
	s tSC=$$$OK
	
	s tOrder=pRequest.OrderId
	&sql(select 1 from Analytics.Orders where OrderId=:tOrder)

	if ('SQLCODE){
		s tObj=##class(Analytics.Order).%OpenId(tOrder)
		s tOp="U"
	}else{
		s tObj=##class(Analytics.Order).%New()
		s tOp="C"	
	}
		i ($l(pRequest.ActualCanceledDateTime)){
			s tObj.ActualCanceledDateTime=pRequest.ActualCanceledDateTime
			s tObj.FromOrderToCancelTime=$SYSTEM.SQL.DATEDIFF("mi",tObj.ActualOrderRequestDateTime,pRequest.ActualCanceledDateTime)
		}
		i ($l(pRequest.ActualCompleteDateTime)){ 
			s tObj.ActualCompleteDateTime=pRequest.ActualCompleteDateTime
			s tObj.FromInProgressToCompleteTime=$SYSTEM.SQL.DATEDIFF("mi",tObj.ActualInProgressDateTime,pRequest.ActualCompleteDateTime)
		}
		i ($l(pRequest.ActualInProgressDateTime)) {
			s tObj.ActualInProgressDateTime=pRequest.ActualInProgressDateTime
			s tObj.FromOrderToInProgressTime=$SYSTEM.SQL.DATEDIFF("mi",tObj.ActualOrderRequestDateTime,pRequest.ActualInProgressDateTime)
		}
		s:($l(pRequest.ActualOrderRequestDateTime)) tObj.ActualOrderRequestDateTime=pRequest.ActualOrderRequestDateTime
		s:($l(pRequest.ActualOrderRequestDateTimeDiff)) tObj.ActualOrderRequestDateTimeDiff=pRequest.ActualOrderRequestDateTimeDiff
		s:($l(pRequest.Canceled)) tObj.Canceled=pRequest.Canceled
		s:($l(pRequest.CanceledDateTime)) tObj.CanceledDateTime=pRequest.CanceledDateTime
		s:($l(pRequest.CancelingSystem)) tObj.CancelingSystem=pRequest.CancelingSystem
		s:($l(pRequest.Completed)) tObj.Completed=pRequest.Completed
		s:($l(pRequest.CompleteDateTime)) tObj.CompleteDateTime=pRequest.CompleteDateTime
		s:($l(pRequest.InProgress)) tObj.InProgress=pRequest.InProgress
		s:($l(pRequest.InProgressDateTime)) tObj.InProgressDateTime=pRequest.InProgressDateTime
		s:($l(pRequest.InProgressSystem)) tObj.InProgressSystem=pRequest.InProgressSystem
		s:($l(pRequest.OrderEnteringLocation)) tObj.OrderEnteringLocation=pRequest.OrderEnteringLocation
		s:($l(pRequest.OrderGroupId)) tObj.OrderGroupId=pRequest.OrderGroupId
		s:($l(pRequest.OrderId)) tObj.OrderId=pRequest.OrderId
		s:($l(pRequest.OrderRequestDateTime)) tObj.OrderRequestDateTime=pRequest.OrderRequestDateTime
		s:($l(pRequest.OrderRequestDoctorClinicalName)) tObj.OrderRequestDoctorClinicalName=pRequest.OrderRequestDoctorClinicalName
		s:($l(pRequest.OrderRequestDoctorId)) tObj.OrderRequestDoctorId=pRequest.OrderRequestDoctorId
		s:($l(pRequest.OrderRequestLocation)) tObj.OrderRequestLocation=pRequest.OrderRequestLocation
		s:($l(pRequest.PatientBannerId)) tObj.PatientBannerId=pRequest.PatientBannerId
		s:($l(pRequest.PatientClass)) tObj.PatientClass=pRequest.PatientClass
		s:($l(pRequest.PatientGroup)) tObj.PatientGroup=pRequest.PatientGroup
		s:($l(pRequest.PatientRowId)) tObj.PatientRowId=pRequest.PatientRowId
		s:($l(pRequest.PatientURN)) tObj.PatientURN=pRequest.PatientURN
		s:($l(pRequest.PatientVisitLocation)) tObj.PatientVisitLocation=pRequest.PatientVisitLocation
		i (tOp="C"){
			d tObj.MessageId.Insert(pRequest.MessageId)
		} elseif(tOp="U"){
			s tFind=tObj.MessageId.Find(pRequest.MessageId)
			s:(""=tFind) tSC=tObj.MessageId.Insert(pRequest.MessageId)	
		}
		s:($l(pRequest.UniversalServiceDesc)) tObj.UniversalServiceDesc=pRequest.UniversalServiceDesc
		s:($l(pRequest.UniversalServiceFillerId)) tObj.UniversalServiceFillerId=pRequest.UniversalServiceFillerId
		s:($l(pRequest.UniversalServicePlacerId)) tObj.UniversalServicePlacerId=pRequest.UniversalServicePlacerId
		
		s tSC=tObj.%Save()
	
	q tSC
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="Analytics.StorageRequestMsg"> 
		<Method>Upsert</Method>
	</MapItem>
</MapItems>
}

}

