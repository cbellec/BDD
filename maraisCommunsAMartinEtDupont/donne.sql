-- INSERT sur la table marais

INSERT INTO public.marais(idmar, nommar, adrmar) VALUES (0001, 'marais_1', '32 avenue des carreau');
INSERT INTO public.marais(idmar, nommar, adrmar) VALUES (0002, 'marais_2', '24 rue de l aeropostale');
INSERT INTO public.marais(idmar, nommar, adrmar) VALUES (0003, 'marais_3', '2 route de luchat');

-- INSERT sur la table proprietaire
INSERT INTO public.proprietaire(idpro, nompro, prenompro) VALUES (0001, 'bellec', 'jean');
INSERT INTO public.proprietaire(idpro, nompro, prenompro) VALUES (0002, 'Jean', 'Martin');
INSERT INTO public.proprietaire(idpro, nompro, prenompro) VALUES (0003, 'Dupont', 'pierre');


-- INSERT sur la table propriete
INSERT INTO public.propriete(idpro, idmar) VALUES (0001, 0001);
INSERT INTO public.propriete(idpro, idmar) VALUES (0002, 0002);
INSERT INTO public.propriete(idpro, idmar) VALUES (0003, 0002);
INSERT INTO public.propriete(idpro, idmar) VALUES (0003, 0001);
