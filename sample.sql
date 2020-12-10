
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
