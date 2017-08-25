REGISTER piggybank.jar
DEFINE XPath org.apache.pig.piggybank.evaluation.xml.XPath();
REGISTER pigudf.jar
DEFINE ObjectiveFilter80 pigudf.Objective80;
A = LOAD '/flume_sink/*' using org.apache.pig.piggybank.storage.XMLLoader('row') as (x:chararray);
B = FOREACH A GENERATE XPath(x, 'row/State_Name') AS state,
XPath(x, 'row/District_Name') AS dist,
XPath(x, 'row/Project_Objectives_IHHL_BPL') AS po_bpl,
XPath(x, 'row/Project_Objectives_IHHL_APL') AS po_apl,
XPath(x, 'row/Project_Objectives_IHHL_TOTAL') AS po_total,
XPath(x, 'row/Project_Objectives_SCW') AS po_scw,
XPath(x, 'row/Project_Objectives_School_Toilets') AS po_school_toilets,
XPath(x, 'row/Project_Objectives_Anganwadi_Toilets') AS po_anganwadi_toilets,
XPath(x, 'row/Project_Objectives_RSM') AS po_rsm,
XPath(x, 'row/Project_Objectives_PC') AS po_ps,
XPath(x, 'row/Project_Performance-IHHL_BPL') AS pp_bpl,
XPath(x, 'row/Project_Performance-IHHL_APL') AS pp_apl,
XPath(x, 'row/Project_Performance-IHHL_TOTAL') AS pp_total,
XPath(x, 'row/Project_Performance-SCW') AS pp_scw,
XPath(x, 'row/Project_Performance-School_Toilets') AS pp_school_toilets,
XPath(x, 'row/Project_Performance-Anganwadi_Toilets') AS pp_anganwadi_toilets,
XPath(x, 'row/Project_Performance-RSM') AS pp_rsm,
XPath(x, 'row/Project_Performance-PC') AS pp_pc;
C = FOREACH B GENERATE (chararray)state, (chararray)dist, (int)po_bpl, (int)pp_bpl;
D = FILTER C BY ObjectiveFilter80(po_bpl, pp_bpl);
STORE D INTO '/user/acadgild/project/StateWiseDevelopment/ProblemStatement2';

