SELECT m.name, m.address, cv.cageid
FROM Members m, CageVisits cv
WHERE cv.memberID = m.memberID
AND cv.likedVisit = TRUE;
