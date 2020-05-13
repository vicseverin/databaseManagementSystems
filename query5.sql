SELECT DISTINCT a.animalID AS theANIMALID, a.cageID as theCageID, a.animalAge AS theAge, k.hireDate AS theHireDate, k.keeperID AS theKeeperID
FROM Animals a, Species s, Cages c, Keepers k, CageVisits cv
WHERE a.speciesID = s.speciesID
AND s.speciesName LIKE '%a%'
AND s.genus is NOT NULL
AND a.cageID = c.cageID
AND c.keeperID = k.keeperID
AND k.hireDate >= '2019-01-02'
AND k.hireDate <= '2019-12-30'
AND a.cageID = cv.cageID
AND cv.likedVisit = 'FALSE';
