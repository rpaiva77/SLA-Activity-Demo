Class Analytics.HL7toOrderCM Extends Ens.DataTransformDTL [ DependsOn = (EnsLib.HL7.Message, Analytics.StorageRequestMsg) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='Analytics.StorageRequestMsg' sourceDocType='2.4:ORU_R01' create='new' language='objectscript' >
<assign value='source.{MSH:MessageControlID}' property='target.MessageId' action='set' />
<assign value='1' property='target.Completed' action='set' />
<assign value='source.{PIDgrpgrp(1).ORCgrp(1).ORC:PlacerOrderNumber.entityidentifier}' property='target.OrderId' action='set' />
<assign value='##class(Analytics.FunctionUtils).HL7ToODBCDate(source.{MSH:DateTimeOfMessage})' property='target.ActualCompleteDateTime' action='set' />
<assign value='##class(Analytics.FunctionUtils).HL7ToODBCDate(source.{PIDgrpgrp(1).ORCgrp(1).ORC:DateTimeofTransaction.timeofanevent})' property='target.CompleteDateTime' action='set' />
</transform>
}

}

