SELECT k.keeperID, k.name, k.keeperSalary
FROM Keepers k, Cages c, Species s, Species s2, Animals a, Animals a2
WHERE s.speciesName = 'lion'
AND s2.speciesName = 'tiger'
AND a.speciesID = s.speciesID
AND a2.speciesID = s2.speciesID
AND c.cageID = a.cageID
AND c.cageID = a2.cageID
AND k.keeperID = c.keeperID
ORDER BY k.keeperSalary desc, k.name asc
