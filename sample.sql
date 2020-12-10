
1) To display students with max package:

select s.NAME,c.NAME,p.PACKAGE from placements p
INNER JOIN student s on (s.ID = p.S_ID)
INNER JOIN company c on (c.ID = p.C_ID)
where PACKAGE = (select max(PACKAGE) from  placements);

2) TO display ECE students placements details:

select s.NAME , s.DEPARTMENT , c.NAME , p.PACKAGE,
CASE
 	when p.S_ID is NULL then "NO"
 	ELSE "YES"
 END AS PLACED
 from placements p
RIGHT JOIN student s ON (s.ID = p.S_ID)
LEFT JOIN company c ON (c.ID = p.C_ID) 
WHERE s.DEPARTMENT = 'ECE';




3) To display count of company

select c.NAME AS COMPANY, count(p.C_ID) AS NO_OF_STUDENTS
from company c
LEFT JOIN placements p on c.ID = p.C_ID
group by c.ID;

