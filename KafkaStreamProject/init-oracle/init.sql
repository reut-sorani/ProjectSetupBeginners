ALTER SESSION SET CONTAINER = XEPDB1;

CONNECT appuser/apppass@XEPDB1;


-- Create the props_data table
CREATE TABLE props_data (
    resource_id NUMBER,
    resource_name VARCHAR2(100),
    field_name VARCHAR2(100),
    field_type VARCHAR2(50),
    field_special_type VARCHAR2(50)
);

CREATE TABLE resource_description (
    resource_id NUMBER,
    resource_name VARCHAR2(100),
    resource_version VARCHAR2(50),
    file_type VARCHAR2(50),
    delimiter VARCHAR2(50),
	end_line VARCHAR2(50)
);

commit;

-- Sample inserts into props_data
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30111, 'cars', 'height', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30111, 'cars', 'size', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30111, 'cars', 'weight', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30111, 'cars', 'color', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30111, 'cars', 'city', 'string', 'LOC');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30111, 'cars', 'price', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30111, 'cars', 'country', 'string', 'Country');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'height', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'citizenship_loccaly', 'boolean', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'citizenship_il', 'boolean', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'purpose_visit', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'money_spent', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'gender', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'phone_number', 'string', 'PHONE');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'height', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'citizenship_loccaly', 'boolean', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'citizenship_il', 'boolean', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'purpose_visit', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'money_spent', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'gender', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(20123, 'peopleFromUS', 'phone_number', 'string', 'PHONE');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'height', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'citizenship_loccaly', 'boolean', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'citizenship_il', 'boolean', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'purpose_visit', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'money_spent', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'gender', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'phone_number', 'string', 'PHONE');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(30142, 'peopleFromUK', 'pressure', 'float', 'sensor');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(45244, 'peopleFromIL', 'height', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(45244, 'peopleFromIL', 'citizenship_loccaly', 'boolean', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(45244, 'peopleFromIL', 'money_spent', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(45244, 'peopleFromIL', 'gender', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(45244, 'peopleFromIL', 'phone_number', 'string', 'PHONE');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(45244, 'peopleFromIL', 'city', 'string', 'LOC');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(45244, 'peopleFromIL', 'work_type', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(34682, 'clothes', 'color', 'string', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(34682, 'clothes', 'price', 'float', '');
INSERT INTO props_data (resource_id, resource_name, field_name, field_type, field_special_type) VALUES
(34682, 'clothes', 'designer', 'string', '');


INSERT INTO resource_description (resource_id,resource_name,resource_version,file_type,delimiter,end_line) VALUES
(34682, 'clothes', 1, 'JSON', '','');
INSERT INTO resource_description (resource_id,resource_name,resource_version,file_type,delimiter,end_line) VALUES
(45244, 'peopleFromIL', 2, 'CSV', '|','\n');
INSERT INTO resource_description (resource_id,resource_name,resource_version,file_type,delimiter,end_line) VALUES
(30142, 'peopleFromUK', 1, 'CSV', '|','\n\r');
INSERT INTO resource_description (resource_id,resource_name,resource_version,file_type,delimiter,end_line) VALUES
(20123, 'peopleFromUS', 5, 'CSV', ',', '\n');
INSERT INTO resource_description (resource_id,resource_name,resource_version,file_type,delimiter,end_line) VALUES
(30111, 'cars', 5, 'JSON', '', '');

commit;