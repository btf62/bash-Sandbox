DECLARE @RochesterCampusId INT = 1;

SELECT DISTINCT
    p.Id AS PersonId,
    p.FirstName,
    p.LastName,
    p.Email
FROM Person p
WHERE
    -- Rochester campus (primary)
    p.PrimaryCampusId = @RochesterCampusId

    -- HAS "Fasting 2026" organizational tag (OwnerPersonAliasId is NULL)
    AND EXISTS (
        SELECT 1
        FROM TaggedItem ti
        JOIN Tag t ON t.Id = ti.TagId
        WHERE
            ti.EntityGuid = p.[Guid]
            AND t.[Name] = 'Fasting 2026'
            AND t.OwnerPersonAliasId IS NULL
    )

    -- DOES NOT HAVE "Bulk 1" personal tag (any personal owner)
    AND NOT EXISTS (
        SELECT 1
        FROM TaggedItem ti
        JOIN Tag t ON t.Id = ti.TagId
        WHERE
            ti.EntityGuid = p.[Guid]
            AND t.[Name] = 'Bulk 1'
            AND t.OwnerPersonAliasId IS NOT NULL
    )

ORDER BY
    p.LastName, p.FirstName;