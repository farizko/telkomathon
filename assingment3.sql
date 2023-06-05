/*Problem 1:Find the total number of crimes recorded in the CRIME table.*/
/*select count(id) as "Total Crime" from chicagocrimedata;*/

/*List community areas with per capita income less than 11000*/
/*select COMMUNITY_AREA_NAME as "Community Area" from chicagocensusdata where PER_CAPITA_INCOME<11000 group by COMMUNITY_AREA_NAME;*/

/*Problem 3: List all case numbers for crimes involving minors?*/
/*select CASE_NUMBER as "Case Number" from chicagocrimedata where DESCRIPTION like "%minor%"*/

/*Problem 4: List all kidnapping crimes involving a child?(children are not considered minors for the purposes of crime analysis)*/
/*select * from chicagocrimedata where PRIMARY_TYPE ="KIDNAPPING" and DESCRIPTION not like "%minor%";*/

/*Problem 5: What kind of crimes were recorded at schools?*/
/*select distinct(PRIMARY_TYPE), LOCATION_DESCRIPTION from chicagocrimedata WHERE LOCATION_DESCRIPTION LIKE "%%SCHOOL%%"*/

/*Problem log_20230201_202305316: List the average safety score for all types of schools.*/
/*SELECT `Elementary, Middle, or High School` ,avg(SAFETY_SCORE) from chicagopublicschools 
group by `Elementary, Middle, or High School`;*/

/*Problem 7: List 5 community areas with highest % of households below poverty line*/
select COMMUNITY_AREA_NAME,PERCENT_HOUSEHOLDS_BELOW_POVERTY from chicagocensusdata 
ORDER BY PERCENT_HOUSEHOLDS_BELOW_POVERTY DESC LIMIT 5;

/*Problem 8: Which community area(number) is most crime prone?*/
/*Select COMMUNITY_AREA_NUMBER, count(COMMUNITY_AREA_NUMBER) CRIME_COUNT from chicagocrimedata
group by COMMUNITY_AREA_NUMBER
order by CRIME_COUNT desc
limit 1;*/

/*Problem 9: Use a sub-query to find the name of the community area with highest hardship index.*/
/*select COMMUNITY_AREA_NAME from chicagocensusdata
	where HARDSHIP_INDEX = (select max(HARDSHIP_INDEX) from chicagocensusdata);*/
    
/*Problem 10: Use a sub-query to determine the Community Area Name with most number of crimes?*/
/*select	COMMUNITY_AREA_NAME from chicagocensusdata
	where COMMUNITY_AREA_NUMBER = (select COMMUNITY_AREA_NUMBER from chicagocrimedata
		group by COMMUNITY_AREA_NUMBER
        order by count(COMMUNITY_AREA_NUMBER) desc
        limit 1);*/
        