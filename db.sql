--
-- Unit Test IBMi database
-- 
-- utoi
-- 

-- ut_objects_references

CREATE TABLE UT_OBJECT_REFERENTIAL FOR SYSTEM NAME UTREFOBJ ( 
	"ID" BIGINT NOT NULL DEFAULT 0 , 
	TEST_NAME VARCHAR(64)  NOT NULL DEFAULT '' , 
	TEST_DESCRIPTION VARCHAR(500) NOT NULL DEFAULT '' , 
	OBJECT_NAME  CHAR(10)   NOT NULL DEFAULT '' , 
	OBJECT_TEXT char(50) not null default '' ,
	OBJECT_TYPE   CHAR(10)   NOT NULL DEFAULT '' , 
	OBJECT_LIBRARY CHAR(10)   NOT NULL DEFAULT '*LIBL' , 
	CONSTRAINT Q_NGRULIER1_UTREFOBJ_ID_00001 PRIMARY KEY( "ID" ) 
	) 
	RCDFMT UTREFOBJ   
	; 
  
LABEL ON TABLE UT_OBJECT_REFERENTIAL IS 'Unit test object referential';
  
LABEL ON COLUMN UT_OBJECT_REFERENTIAL 
( "ID" TEXT IS 'id' , 
	TEST_NAME TEXT IS 'name of the unit test' , 
	TEST_DESCRIPTION TEXT IS 'Description' , 
	OBJECT_NAME TEXT IS 'name of the object tested' , 
	OBJECT_TYPE TEXT IS 'type of the tested object' 
) ; 