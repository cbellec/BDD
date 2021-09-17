------------------------------------------POPULATE---------------------------------------
-- INSERT sur la table carreau
INSERT INTO public.carreau(idcar, idmar, numemp) VALUES (?, ?, ?);

-- INSERT sur la table marais

INSERT INTO public.marais(idmar, nommar, adrmar) VALUES (?, ?, ?);

-- INSERT sur la table proprietaire
INSERT INTO public.proprietaire(idpro, nompro, prenompro) VALUES (?, ?, ?);

-- INSERT sur la table propriete
INSERT INTO public.propriete(idpro, idmar) VALUES (?, ?);

-- INSERT sur la table recolte
INSERT INTO public.recolte(idrec, idcar, idsau, daterec, typesel, qtesel) VALUES (?, ?, ?, ?, ?, ?);

-- INSERT sur la table saunier
INSERT INTO public.saunier(idsau, nomsau, prenomsau) VALUES (?, ?, ?);


------------------------------------------DELETE---------------------------------------

-- DELETE sur la table recolte
DELETE FROM recolte;

-- DELETE sur la table saunier
DELETE FROM saunier;

-- DELETE sur la table carreau
DELETE FROM carreau;

-- DELETE sur la table marais
DELETE FROM marais;

-- DELETE sur la table proprietaire
DELETE FROM proprietaire;

-- DELETE sur la table propriete
DELETE FROM propriete;
