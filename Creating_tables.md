**Creating and uploading table "population_data"**

````sql
CREATE TABLE population_data
 (
  country_id INTEGER NOT NULL PRIMARY KEY,
  country_name VARCHAR(20),
  area_km² NUMERIC,
  population NUMERIC,
  population_per_sq_km NUMERIC
);
````

````sql
INSERT INTO population_data
  (country_id,country_name,area_km²,population,population_per_sq_km)
VALUES

  ('1','Austria','83879','8917000','106.3'),         
  ('2','Belgium','30530','11544000','378.1'),
  ('3','France','549087','67380000','122.7'),
  ('4','Germany','357580','83161000','232.6'),
  ('5','Liechtenstein','161','38137','237.6'),
  ('6','Luxembourg','2590','630419','243.4'),
  ('7','Netherlands','41543','17442000','419.8'),
  ('8','Switzerland','41290','8637000','209.2'),
  ('9','Belarus','207600','9380000','45.18'),
  ('10','Bulgaria','111000','6934000','62.47'),
  ('11','Czechia','78870','10698000','135.6'),
  ('12','Hungary','93030','9750000','104.8'),
  ('13','Moldova','33850','2620000','77.41'),
  ('14','Poland','312680','37899000','121.2'),
  ('15','Romania','238400','19258000','80.78'),
  ('16','Spain','505935','47363000','93.62'),
  ('17','Slovakia','49030','5459000','111.3'),
  ('18','Ukraine','603550','44135000','73.13'),
  ('19','Denmark','42920','5831000','135.9'),
  ('20','Estonia','45340','1329000','29.32'),
  ('21','Finland','338450','5530000','16.34'),
  ('22','Iceland','103000','366463','3.55'),
  ('23','Ireland','70280','4986000','70.94'),
  ('24','Latvia','64490','1900000','29.47'),
  ('25','Lithuania','65286','2795000','42.81'),
  ('26','Norway','385203','5379000','13.97'),
  ('27','Sweden','447430','10353000','23.14'),
  ('28','United Kingdom','243610','67215000','275.9'),
  ('29','Albania','28750','2838000','98.71'),
  ('30','Greece','131960','10701000','81.09'),
  ('31','Malta','320','515332','1610'),
  ('32','Montenegro','13810','621306','44.99'),
  ('33','Portugal','92226','10297000','111.7'),
  ('34','Serbia','88360','6899000','78.08'),
  ('35','Slovenia','20675','2102000','101.7'),
  ('36','Italy','301277','60304000', '200.16');
  ````
  **Part of the table:**
  
![obraz](https://user-images.githubusercontent.com/100040541/236893511-5d3068a4-3cbf-4fcf-a5f0-d7eb8fe1a482.png)

   **Creating and uploading table "lifespan"**
   
  ````sql
  CREATE TABLE lifespan
 (
  country_id INTEGER NOT NULL PRIMARY KEY,
  country_name VARCHAR(20),
  region VARCHAR(20),
  male_life_expectancy NUMERIC,
  female_life_expectancy NUMERIC,
  birth_rate NUMERIC,
  death_rate NUMERIC
);
 ````

````sql
INSERT INTO lifespan
  (country_id, country_name, region, male_life_expectancy, female_life_expectancy, birth_rate, death_rate)
VALUES
  ('1','Austria','Western Europe','78.9','83.6','9.4','10.3'),         
  ('2','Belgium','Western Europe','78.6','83.1','9.9','11.0'),
  ('3','France','Western Europe','79.2','85.3','10.9','9.9'),
  ('4','Germany','Western Europe','78.6','83.4','9.3','11.9'),
  ('5','Liechtenstein','Western Europe','80.1','83.6','9.1','8.2'),
  ('6','Luxembourg','Western Europe','79.4','84.2','10.2','7.3'),
  ('7','Netherlands','Western Europe','79.8','83.1','9.7','9.7'),
  ('8','Switzerland','Western Europe','81.1','85.2','9.9','8.8'),
  ('9','Belarus','Eastern Europe','69.3','79.4','9.3','13.0'),
  ('10','Bulgaria','Eastern Europe','69.9','77.5','8.5','18.0'),
  ('11','Czechia','Eastern Europe','75.3','81.3','10.3','12.1'),
  ('12','Hungary','Eastern Europe','72.3','79.1','9.6','14.5'),
  ('13','Moldova','Eastern Europe','67.7','76.3','9.8','11.8'),
  ('14','Poland','Eastern Europe','72.6','80.8','9.4','12.6'),
  ('15','Romania','Eastern Europe','70.5','78.4','9.2','15.4'),
  ('16','Spain','Southern Europe','79.7','85.1','7.1','10.4'),
  ('17','Slovakia','Eastern Europe','73.5','80.4','10.4','10.8'),
  ('18','Ukraine','Eastern Europe','66.4','76.2','7.8','15.9'),
  ('19','Denmark','Northern Europe','79.6','83.6','10.4','9.4'),
  ('20','Estonia','Northern Europe','74.2','82.7','9.9','11.9'),
  ('21','Finland','Northern Europe','79.4','85.0','8.4','10.0'),
  ('22','Iceland','Northern Europe','81.7','84.5','12.3','6.3'),
  ('23','Ireland','Northern Europe','80.4','84.1','11.2','6.4'),
  ('24','Latvia','Northern Europe','70.9','80.1','9.2','15.2'),
  ('25','Lithuania','Northern Europe','70.1','80.0','9.0','15.6'),
  ('26','Norway','Northern Europe','81.6','84.9','9.8','7.5'),
  ('27','Sweden','Northern Europe','80.7','84.2','10.9','9.5'),
  ('28','United Kingdom','Northern Europe','79.0','82.9','10.2','10.4'),
  ('29','Albania','Southern Europe','77.2','80.3','11.5','8.3'),
  ('30','Greece','Southern Europe','78.6','83.7','7.9','12.2'),
  ('31','Malta','Southern Europe','80.8','84.6','8.6','7.9'),
  ('32','Montenegro','Southern Europe','73.2','78.8','11.4','11.7'),
  ('33','Portugal','Southern Europe','78.0','84.1','8.2','12.0'),
  ('34','Serbia','Southern Europe','71.4','77.2','8.9','16.9'),
  ('35','Slovenia','Southern Europe','77.8','83.4','8.9','11.4'),
  ('36','Italy','Southern Europe','80.9','84.9','7.3','10.7');
   ````
   **Part of the table:**
   
   ![obraz](https://user-images.githubusercontent.com/100040541/236893565-629e6e3b-2474-4985-8f5e-7d371ca50ec7.png)

   
