SELECT DISTINCT a.animalID
FROM Cages c, Animals a
WHERE a.cageID = c.cageID 
AND cageSector = 'N';
