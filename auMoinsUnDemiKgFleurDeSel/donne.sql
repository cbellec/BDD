-- INSERT sur la table marais

INSERT INTO public.marais(idmar, nommar, adrmar) VALUES (0001, 'marais_1', '32 avenue des carreau');

-- INSERT sur la table proprietaire
INSERT INTO public.proprietaire(idpro, nompro, prenompro) VALUES (0001, 'bellec', 'jean');

-- INSERT sur la table carreau
INSERT INTO public.carreau(idcar, idmar, numemp) VALUES (0001, 0001, 001);
INSERT INTO public.carreau(idcar, idmar, numemp) VALUES (0002, 0001, 002);

-- INSERT sur la table propriete
INSERT INTO public.propriete(idpro, idmar) VALUES (0001, 0001);

-- INSERT sur la table saunier
INSERT INTO public.saunier(idsau, nomsau, prenomsau) VALUES (0001, 'Etourneau', 'Antoine');

-- INSERT sur la table recolte
INSERT INTO public.recolte(idrec, idcar, idsau, daterec, typesel, qtesel) VALUES (0001, 0001, 0001, '2021-09-17', 'fleur', 02.051);
INSERT INTO public.recolte(idrec, idcar, idsau, daterec, typesel, qtesel) VALUES (0002, 0001, 0001, '2021-09-16', 'fleur', 00.300);
INSERT INTO public.recolte(idrec, idcar, idsau, daterec, typesel, qtesel) VALUES (0003, 0001, 0001, '2021-09-15', 'fleur', 04.051);
INSERT INTO public.recolte(idrec, idcar, idsau, daterec, typesel, qtesel) VALUES (0004, 0002, 0001, '2021-09-14', 'gros', 01.500);
