--Use SQL joins to find the average of the students that took the BJAT in 2010 but did not take the PSE in 2013.

SELECT AVG (bjat) AS bjat_avg
FROM bjatgrades
LEFT JOIN psegrades
ON bjatgrades.bjatgradeid=psegrades.psegradesid
WHERE psegrades.psegradesid IS NULL;

--Use SQL joins to find the average of the students that took the PSE in 2013 but did not take the BJAT in 2010.

SELECT AVG (pse) AS pse_avg
FROM bjatgrades
LEFT JOIN psegrades
ON bjatgrades.bjatgradeid=psegrades.psegradesid
WHERE bjatgrades.bjatgradeid IS NULL;

--Use SQL joins to find the average of the students that took the BJAT in 2010 and toke the PSE in 2013.

SELECT AVG (bjat) AS bjat_avg, AVG (pse) AS pse_avg
FROM bjatgrades
INNER JOIN psegrades
ON bjatgrades.bjatgradeid=psegrades.psegradesid;