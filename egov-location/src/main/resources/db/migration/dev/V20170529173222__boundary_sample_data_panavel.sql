INSERT INTO eg_hierarchy_type (id, name, code, createddate, lastmodifieddate, createdby, lastmodifiedby, version, localname,tenantid) VALUES (nextval('seq_eg_hierarchy_type'), 'REVENUE', 'REVENUE', '2010-01-01 00:00:00', '2015-01-01 00:00:00', 1, 1, 0,NULL,'panavel');
INSERT INTO eg_hierarchy_type (id, name, code, createddate, lastmodifieddate, createdby, lastmodifiedby, version, localname,tenantid) VALUES (nextval('seq_eg_hierarchy_type'), 'LOCATION', 'LOCATION', '2010-01-01 00:00:00', '2015-01-01 00:00:00', 1, 1, 0,NULL,'panavel');
INSERT INTO eg_hierarchy_type (id, name, code, createddate, lastmodifieddate, createdby, lastmodifiedby, version, localname,tenantid) VALUES (nextval('seq_eg_hierarchy_type'), 'ADMINISTRATION', 'ADMIN', '2010-01-01 00:00:00', '2015-01-01 00:00:00', 1, 1, 0,NULL,'panavel');



INSERT INTO eg_city (domainurl, name, local_name, id, active, version, createdby, lastmodifiedby, code, district_code, district_name,
longitude, latitude, preferences,region_name,grade,tenantid) VALUES ('localhost', 'panavel Municipal Corporation', 'panavel', nextval('seq_eg_city'), true, 0, 1, 1,'0002', NULL, NULL, NULL, NULL, NULL,NULL,NULL,'panavel');


INSERT INTO eg_boundary_type (id, hierarchy, parent, name, hierarchytype, createddate, lastmodifieddate, createdby, lastmodifiedby, version, localname, code, tenantid) VALUES (nextval('seq_eg_boundary_type'), 1, NULL, 'City', (select id from eg_hierarchy_type where code = 'REVENUE' and tenantid = 'panavel'), '2010-01-01 00:00:00', '2015-01-01 00:00:00', 1, 1, 0, NULL, 'REVCITY','panavel');
INSERT INTO eg_boundary_type (id, hierarchy, parent, name, hierarchytype, createddate, lastmodifieddate, createdby, lastmodifiedby, version, localname, code, tenantid) VALUES (nextval('seq_eg_boundary_type'), 2, NULL, 'City', (select id from eg_hierarchy_type where code = 'LOCATION' and tenantid = 'panavel'), '2015-08-28 10:44:03.831086', '2015-08-28 10:44:03.831086', 1, 1, 0, NULL, 'LOCCITY','panavel');
INSERT INTO eg_boundary_type (id, hierarchy, parent, name, hierarchytype, createddate, lastmodifieddate, createdby, lastmodifiedby, version, localname, code, tenantid) VALUES (nextval('seq_eg_boundary_type'), 2, (select id from eg_boundary_type where code ='REVCITY' and tenantid = 'panavel'), 'Circle', (select id from eg_hierarchy_type where code = 'REVENUE' and tenantid = 'panavel'), '2015-08-28 10:44:03.831086', '2015-08-28 10:44:03.831086', 1, 1, 0, NULL, 'CIRCLE','panavel');
INSERT INTO eg_boundary_type (id, hierarchy, parent, name, hierarchytype, createddate, lastmodifieddate, createdby, lastmodifiedby, version, localname, code, tenantid) VALUES (nextval('seq_eg_boundary_type'), 3, (select id from eg_boundary_type where code ='LOCCITY' and tenantid = 'panavel'), 'Zone', (select id from eg_hierarchy_type where code = 'REVENUE' and tenantid = 'panavel'), '2015-08-28 10:44:03.831086', '2015-08-28 10:44:03.831086', 1, 1, 0, NULL, 'ZONE','panavel');
INSERT INTO eg_boundary_type (id, hierarchy, parent, name, hierarchytype, createddate, lastmodifieddate, createdby, lastmodifiedby, version, localname, code, tenantid) VALUES (nextval('seq_eg_boundary_type'), 4, (select id from eg_boundary_type where code ='CIRCLE' and tenantid = 'panavel'), 'Ward', (select id from eg_hierarchy_type where code = 'REVENUE' and tenantid = 'panavel'), '2015-08-28 10:44:03.831086', '2015-08-28 10:44:03.831086', 1, 1, 0, NULL, 'WARD','panavel');
INSERT INTO eg_boundary_type (id, hierarchy, parent, name, hierarchytype, createddate, lastmodifieddate, createdby, lastmodifiedby, version, localname, code, tenantid) VALUES (nextval('seq_eg_boundary_type'), 5, (select id from eg_boundary_type where code ='ZONE' and tenantid = 'panavel'), 'Block', (select id from eg_hierarchy_type where code = 'REVENUE' and tenantid = 'panavel'), '2015-08-28 10:44:03.831086', '2015-08-28 10:44:03.831086', 1, 1, 0, NULL, 'BLOCK','panavel');
INSERT INTO eg_boundary_type (id, hierarchy, parent, name, hierarchytype, createddate, lastmodifieddate, createdby, lastmodifiedby, version, localname, code, tenantid) VALUES (nextval('seq_eg_boundary_type'), 2, (select id from eg_boundary_type where code ='BLOCK' and tenantid = 'panavel'), 'Locality', (select id from eg_hierarchy_type where code = 'LOCATION' and tenantid = 'panavel'), '2015-08-28 10:44:03.831086', '2015-08-28 10:44:03.831086', 1, 1, 0, NULL, 'LOCALITY','panavel');
INSERT INTO eg_boundary_type (id, hierarchy, parent, name, hierarchytype, createddate, lastmodifieddate, createdby, lastmodifiedby, version, localname, code, tenantid) VALUES (nextval('seq_eg_boundary_type'), 3, (select id from eg_boundary_type where code ='LOCALITY' and tenantid = 'panavel'), 'Street', (select id from eg_hierarchy_type where code = 'LOCATION' and tenantid = 'panavel'), '2015-08-28 10:44:03.831086', '2015-08-28 10:44:03.831086', 1, 1, 0, NULL, 'STREET','panavel');
INSERT INTO eg_boundary_type (id, hierarchy, parent, name, hierarchytype, createddate, lastmodifieddate, createdby, lastmodifiedby, version, localname, code, tenantid) VALUES (nextval('seq_eg_boundary_type'), 1, NULL, 'City', (select id from eg_hierarchy_type where code = 'ADMIN' and tenantid = 'panavel'), '2015-08-28 10:44:03.831086', '2015-08-28 10:44:03.831086', 1, 1, 0, NULL, 'ADMCITY','panavel');
INSERT INTO eg_boundary_type (id, hierarchy, parent, name, hierarchytype, createddate, lastmodifieddate, createdby, lastmodifiedby, version, localname, code, tenantid) VALUES (nextval('seq_eg_boundary_type'), 2, (select id from eg_boundary_type where code ='ADMCITY' and tenantid = 'panavel'), 'Ward', (select id from eg_hierarchy_type where code = 'ADMIN' and tenantid = 'panavel'), '2015-08-28 10:44:03.831086', '2015-08-28 10:44:03.831086', 1, 1, 0, NULL, 'WARD','panavel');



INSERT INTO eg_boundary (id, boundarynum, parent, name, boundarytype, localname, bndry_name_old, bndry_name_old_local, fromdate, todate, bndryid, longitude, latitude, materializedpath, ishistory, createddate, lastmodifieddate, createdby, lastmodifiedby, version,tenantid)
VALUES (nextval('seq_eg_boundary'), 1, NULL, 'Panavel  Municipality', (select id from eg_boundary_type where code = 'ADMCITY' and tenantid = 'panavel'), 'Panavel  Municipality', NULL, NULL, '2004-04-01 00:00:00', '2099-04-01 00:00:00', NULL, NULL, NULL, '3', false, '2015-08-28 10:44:03.831086', '2015-08-28 10:44:03.831086', 1, 1,NULL,'panavel');
INSERT INTO eg_boundary (id, boundarynum, parent, name, boundarytype, localname, bndry_name_old, bndry_name_old_local, fromdate, todate, bndryid, longitude, latitude, materializedpath, ishistory, createddate, lastmodifieddate, createdby, lastmodifiedby, version,tenantid)
VALUES (nextval('seq_eg_boundary'), 1,(select id from eg_boundary where parent is null and boundarytype = (select id from eg_boundary_type where code = 'ADMCITY' and tenantid = 'panavel')), 'Election Ward No 1',
(select id from eg_boundary_type where code = 'WARD' and tenantid = 'panavel' and hierarchytype = (select id from eg_hierarchy_type where code = 'ADMIN' and tenantid = 'panavel')), 'Election Ward No 1', NULL, NULL, '2004-04-01 00:00:00', '2099-04-01 00:00:00', NULL, NULL, NULL, '3.1', false, '2015-08-28 10:44:03.831086', '2015-08-28 10:44:03.831086', 1, 1,NULL,'panavel');
INSERT INTO eg_boundary (id, boundarynum, parent, name, boundarytype, localname, bndry_name_old, bndry_name_old_local, fromdate, todate, bndryid, longitude, latitude, materializedpath, ishistory, createddate, lastmodifieddate, createdby, lastmodifiedby, version,tenantid)
VALUES (nextval('seq_eg_boundary'), 2, (select id from eg_boundary where parent is null and boundarytype = (select id from eg_boundary_type where code = 'ADMCITY' and tenantid = 'panavel')), 'Election Ward No 2',
(select id from eg_boundary_type where code = 'WARD' and tenantid = 'panavel' and hierarchytype = (select id from eg_hierarchy_type where code = 'ADMIN' and tenantid = 'panavel')), 'Election Ward No 2', NULL, NULL, '2004-04-01 00:00:00', '2099-04-01 00:00:00', NULL, NULL, NULL, '3.2', false, '2015-08-28 10:44:03.831086', '2015-08-28 10:44:03.831086', 1, 1,NULL,'panavel');
INSERT INTO eg_boundary (id, boundarynum, parent, name, boundarytype, localname, bndry_name_old, bndry_name_old_local, fromdate, todate, bndryid, longitude, latitude, materializedpath, ishistory, createddate, lastmodifieddate, createdby, lastmodifiedby, version,tenantid)
VALUES (nextval('seq_eg_boundary'), 8, (select id from eg_boundary where parent is null and boundarytype = (select id from eg_boundary_type where code = 'ADMCITY' and tenantid = 'panavel')), 'Gandhi Road', (select id from eg_boundary_type where code = 'LOCALITY' and tenantid = 'panavel'), 'Gandhi Road', NULL, NULL, '2004-04-01 00:00:00', '2099-04-01 00:00:00', NULL, NULL, NULL, '1.1.2', false, '2015-08-28 10:44:03.831086', '2015-08-28 10:44:03.831086', 1, 1,NULL,'panavel');
INSERT INTO eg_boundary (id, boundarynum, parent, name, boundarytype, localname, bndry_name_old, bndry_name_old_local, fromdate, todate, bndryid, longitude, latitude, materializedpath, ishistory, createddate, lastmodifieddate, createdby, lastmodifiedby, version,tenantid)
VALUES (nextval('seq_eg_boundary'), 90, (select id from eg_boundary where parent is null and boundarytype = (select id from eg_boundary_type where code = 'ADMCITY' and tenantid = 'panavel')), 'Bank Colony', (select id from eg_boundary_type where code = 'LOCALITY' and tenantid = 'panavel'), 'Bank Colony', NULL, NULL, '2004-04-01 00:00:00', '2099-04-01 00:00:00', NULL, NULL, NULL, '2.83', false, '2015-08-28 10:44:03.831086', '2015-08-28 10:44:03.831086', 1, 1,NULL,'panavel');

INSERT INTO eg_crosshierarchy(id,parent,child,tenantid)
values (nextval('seq_eg_crosshierarchy'),(select id from eg_boundary where name='Election Ward No 2' and tenantid = 'panavel'),(select id from eg_boundary where name='Bank Colony' and tenantid = 'panavel'),'panavel');
INSERT INTO eg_crosshierarchy(id,parent,child,tenantid)
values (nextval('seq_eg_crosshierarchy'),(select id from eg_boundary where name='Election Ward No 1' and tenantid = 'panavel' ),(select id from eg_boundary where name='Gandhi Road' and tenantid = 'panavel'),'panavel');


update eg_crosshierarchy ch set parenttype = (select boundarytype from eg_boundary where id = (select parent from eg_crosshierarchy where id = ch.id));
update eg_crosshierarchy ch set childtype = (select boundarytype from eg_boundary where id = (select child from eg_crosshierarchy where id = ch.id));

