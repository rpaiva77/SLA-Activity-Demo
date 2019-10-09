Class Analytics.HL7ORMtoOrder Extends Ens.DataTransformDTL [ DependsOn = (EnsLib.HL7.Message, Analytics.Order) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='Analytics.Order' sourceDocType='2.4:ORM_O01' create='new' language='objectscript' >
<assign value='source.{MSH:MessageControlID}' property='target.MessageId' action='append' />
<assign value='source.{PIDgrp.PID:PatientID.ID}' property='target.PatientBannerId' action='set' />
<assign value='source.{PIDgrp.PID:PatientIdentifierList(1).ID}' property='target.PatientRowId' action='set' />
<assign value='source.{PIDgrp.PID:PatientIdentifierList(2).ID}' property='target.PatientURN' action='set' />
<assign value='source.{PIDgrp.PV1grp.PV1:PatientClass}' property='target.PatientClass' action='set' />
<assign value='source.{PIDgrp.PID:Race(1).identifierST}' property='target.PatientGroup' action='set' />
<assign value='source.{PIDgrp.PV1grp.PV1:AssignedPatientLocation.pointofcare}' property='target.PatientVisitLocation' action='set' />
<assign value='##class(Analytics.FunctionUtils).HL7ToODBCDate(source.{MSH:DateTimeOfMessage})' property='target.ActualOrderRequestDateTime' action='set' />
<assign value='##class(Analytics.FunctionUtils).HL7ToODBCDate(source.{ORCgrp(1).ORC:DateTimeofTransaction.timeofanevent})' property='target.OrderRequestDateTime' action='set' />
<assign value='source.{ORCgrp(1).ORC:OrderingProvider(1).IDnumberST}' property='target.OrderRequestDoctorId' action='set' />
<assign value='source.{ORCgrp(1).ORC:OrderingProvider(1).familyname}' property='target.OrderRequestDoctorClinicalName' action='set' />
<assign value='source.{ORCgrp(1).ORC:EnteringOrganization.identifierST}' property='target.OrderEnteringLocation' action='set' />
<assign value='source.{ORCgrp(1).OBRuniongrp.OBRunion.OBR:PlacerField2}' property='target.OrderRequestLocation' action='set' />
<assign value='source.{ORCgrp(1).ORC:PlacerGroupNumber.entityidentifier}' property='target.OrderGroupId' action='set' />
<assign value='source.{ORCgrp(1).ORC:PlacerOrderNumber.entityidentifier}' property='target.OrderId' action='set' />
<assign value='source.{ORCgrp(1).OBRuniongrp.OBRunion.OBR:UniversalServiceIdentifier.identifierST}' property='target.UniversalServicePlacerId' action='set' />
<assign value='source.{ORCgrp(1).OBRuniongrp.OBRunion.OBR:UniversalServiceIdentifier.alternateidentifierST}' property='target.UniversalServiceFillerId' action='set' />
<assign value='source.{ORCgrp(1).OBRuniongrp.OBRunion.OBR:UniversalServiceIdentifier.text}' property='target.UniversalServiceDesc' action='set' />
<assign value='##class(Analytics.FunctionUtils).InProgress(source.{ORCgrp(1).ORC:OrderStatus},"1")' property='target.InProgress' action='set' />
<assign value='##class(Analytics.FunctionUtils).InProgress(source.{ORCgrp(1).ORC:OrderStatus},##class(Analytics.FunctionUtils).HL7ToODBCDate(source.{MSH:DateTimeOfMessage}))' property='target.ActualInProgressDateTime' action='set' />
<assign value='##class(Analytics.FunctionUtils).InProgress(source.{ORCgrp(1).ORC:OrderStatus},##class(Analytics.FunctionUtils).HL7ToODBCDate(source.{ORCgrp(1).ORC:DateTimeofTransaction.timeofanevent}))' property='target.InProgressDateTime' action='set' />
<assign value='##class(Analytics.FunctionUtils).InProgress(source.{ORCgrp(1).ORC:OrderStatus},source.{MSH:SendingApplication.namespaceID})' property='target.InProgressSystem' action='set' />
<assign value='##class(Analytics.FunctionUtils).Canceled(source.{ORCgrp(1).ORC:OrderControl},"1")' property='target.Canceled' action='set' />
<assign value='##class(Analytics.FunctionUtils).Canceled(source.{ORCgrp(1).ORC:OrderControl},source.{ORCgrp(1).ORC:DateTimeofTransaction.timeofanevent})' property='target.CanceledDateTime' action='set' />
<assign value='##class(Analytics.FunctionUtils).Canceled(source.{ORCgrp(1).ORC:OrderControl},source.{MSH:DateTimeOfMessage})' property='target.ActualCanceledDateTime' action='set' />
<assign value='##class(Analytics.FunctionUtils).Canceled(source.{ORCgrp(1).ORC:OrderControl},source.{MSH:SendingApplication.namespaceID})' property='target.CancelingSystem' action='set' />
<assign value='##class(Analytics.FunctionUtils).Completed(source.{ORCgrp(1).ORC:OrderStatus},"1")' property='target.Completed' action='set' />
<assign value='##class(Analytics.FunctionUtils).Completed(source.{ORCgrp(1).ORC:OrderStatus},source.{MSH:DateTimeOfMessage})' property='target.ActualCompleteDateTime' action='set' />
<assign value='##class(Analytics.FunctionUtils).Completed(source.{ORCgrp(1).ORC:OrderStatus},source.{ORCgrp(1).ORC:DateTimeofTransaction.timeofanevent})' property='target.CompleteDateTime' action='set' />
<code>
<![CDATA[ s tSC=target.UpSert()]]></code>
</transform>
}

}

