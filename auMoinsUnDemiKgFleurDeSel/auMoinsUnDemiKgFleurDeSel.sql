SELECT r."idcar", r."daterec", r."qtesel", c."idmar", c."numemp"
FROM "recolte" as r, "carreau" as c
where r."typesel" = 'fleur' and r."qtesel" > 00.500 and r."idcar" = c."idcar";
