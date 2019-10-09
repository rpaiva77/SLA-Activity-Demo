/// 
Class BUSINESSPKG.INLABOrdersRoutingRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.HL7.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="BUSINESSPKG.IN_LAB_OrdersRoutingRule" context="EnsLib.HL7.MsgRouter.RoutingEngine" production="BUSINESSPKG.FoundationProduction">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="IN_LAB_Orders_File"></constraint>
<constraint name="docCategory" value="2.4"></constraint>
<constraint name="docName" value="ORM_O01"></constraint>
<when condition="HL7.{ORCgrp(1).ORC:OrderControl}=&quot;NW&quot;">
<send transform="Analytics.HL7toOrderNW" target="Analytics.OrderStorage"></send>
<return></return>
</when>
</rule>
<rule name="" disabled="false">
<constraint name="source" value="IN_LAB_Orders_File"></constraint>
<constraint name="docCategory" value="2.4"></constraint>
<constraint name="docName" value="ORM_O01"></constraint>
<when condition="HL7.{ORCgrp(1).ORC:OrderControl}=&quot;OC&quot;">
<send transform="Analytics.HL7toOrderCA" target="Analytics.OrderStorage"></send>
<return></return>
</when>
</rule>
<rule name="" disabled="false">
<constraint name="source" value="IN_LAB_Orders_File"></constraint>
<constraint name="docCategory" value="2.4"></constraint>
<constraint name="docName" value="ORM_O01"></constraint>
<when condition="(HL7.{ORCgrp(1).ORC:OrderStatus}=&quot;IP&quot;)||(HL7.{ORCgrp(1).ORC:OrderStatus}=&quot;HC&quot;)">
<send transform="Analytics.HL7toOrderIP" target="Analytics.OrderStorage"></send>
<return></return>
</when>
</rule>
<rule name="" disabled="false">
<constraint name="source" value="IN_LAB_Orders_File"></constraint>
<constraint name="docCategory" value="2.4"></constraint>
<constraint name="docName" value="ORU_R01"></constraint>
<when condition="HL7.{PIDgrpgrp(1).ORCgrp(1).ORC:OrderStatus}=&quot;CM&quot;">
<send transform="Analytics.HL7toOrderCM" target="Analytics.OrderStorage"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}

