raw_data = LOAD '/user/acadgild/project/StateWiseDevelopment/ProblemStatement1/*' USING PigStorage('\t') AS (
state:chararray,
dist:chararray,
po_bpl:int,
pp_bpl:int
);

processed_data = FOREACH raw_data GENERATE CONCAT(state,dist) as rowkey, state, dist, po_bpl, pp_bpl;

STORE processed_data INTO 'hbase://statewiseBPLacheived' USING org.apache.pig.backend.hadoop.hbase.HBaseStorage(
'CF:state,
CF:dist,
CF:po_bpl,
CF:pp_bpl'
);

