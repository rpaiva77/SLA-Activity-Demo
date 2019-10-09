Class Analytics.HL7toOrderIP Extends Ens.DataTransformDTL [ DependsOn = (EnsLib.HL7.Message, Analytics.StorageRequestMsg) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='Analytics.StorageRequestMsg' sourceDocType='2.4:ORM_O01' create='new' language='objectscript' >
<assign value='source.{MSH:MessageControlID}' property='target.MessageId' action='set' />
<assign value='source.{ORCgrp(1).ORC:PlacerOrderNumber.entityidentifier}' property='target.OrderId' action='set' />
<assign value='1' property='target.InProgress' action='set' />
<assign value='##class(Analytics.FunctionUtils).HL7ToODBCDate(source.{MSH:DateTimeOfMessage})' property='target.ActualInProgressDateTime' action='set' />
<assign value='##class(Analytics.FunctionUtils).HL7ToODBCDate(source.{ORCgrp(1).ORC:DateTimeofTransaction.timeofanevent})' property='target.InProgressDateTime' action='set' />
<assign value='source.{MSH:SendingApplication.namespaceID}' property='target.InProgressSystem' action='set' />
</transform>
}

}

