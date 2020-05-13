SELECT DISTINCT m.memberID, m.name
FROM Members m, CageVisits cv, Cages c, Animals a, Species s
WHERE (m.name LIKE '%th')
AND (m.memberID = cv.memberID)
AND (cv.cageID = a.cageID)
AND (a.speciesID = s.speciesID)
AND (s.speciesName = 'lion');
