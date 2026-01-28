INSERT INTO GroupMember (
    GroupId, GroupTypeId, PersonId, GroupRoleId, GroupMemberStatus,
    IsSystem, CreatedDateTime, ModifiedDateTime, [Guid]
)
SELECT
    83857, 52, v.PersonId, 1, 1,
    0, GETDATE(), GETDATE(), NEWID()
FROM (
    VALUES

) AS v(PersonId)
WHERE NOT EXISTS (
    SELECT 1 FROM GroupMember gm
    WHERE gm.GroupId = 83857 AND gm.PersonId = v.PersonId
);
