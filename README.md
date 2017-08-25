# Project-2.1--State-Wise-Development-Analysis-In-India
Project 2.1- State-Wise Development Analysis In India

------------------------------------------------------------------------------------------------------------------
Problem statement
GO THROUGH PDFs FOR PROJECT EVALUATION. REST OF THE FILES ARE SCRIPTS/CONFIGS/JAR(JAVA)/SETUP.

------------------------------------------------------------------------------------------------------------------

1. Find out the districts who achieved 100 percent objective in BPL cards
Export the results to mysql using sqoop

Attached Files:
spool_dir.CONFIG - Flume COnfig File to copy dataset from Local File System to HDFS.

Copying Dataset using Flume.PDF - Flume step by step screenshots and execution.

piggybank.jar - JAR having additional pig functionalities.

Problem Statement 1.PDF - contains step-by-step execution along with Screenshots.

problemStatement1.PIG - pig script file to perform pig operation on data to get result an store it on HDFS.

SQLSetup.TXT - MySQL Commands to setup environment.

statewiseBPLacheived.SQOOP - sqoop command executed for exporting data from HDFS file to MySQL Table.

HBaseSetup.TXT - HBase shell commands used to setup environment.

HBase_Load_statewiseBPLacheived.PIG - pig script for importing data in HBase table from HDFS File.

------------------------------------------------------------------------------------------------------------------

2. Write a Pig UDF to filter the districts which have reached 80% of objectives of BPL cards.
Export the results to MySQL using Sqoop.

Attached Files:
spool_dir.CONFIG - Flume COnfig File to copy dataset from Local File System to HDFS.

Copying Dataset using Flume.PDF - Flume step by step screenshots and execution.

piggybank.jar - JAR having additional pig functionalities.

Objective80.JAVA - Java Class having Filter Function for pigudf.

pigudf.jar - Java Archive of Objective80 Class.

Problem Statement 2.PDF - contains step-by-step execution along with Screenshots.

problemStatement2.PIG - pig script file to perform pig operation on data to get result an store it on HDFS.

SQLSetup.TXT - MySQL Commands to setup environment.

statewiseBPL80.SQOOP - sqoop command executed for exporting data from HDFS file to MySQL Table.

HBaseSetup.TXT - HBase shell commands used to setup environment.

HBase_Load_statewiseBPL80.PIG - pig script for importing data in HBase table from HDFS File.
