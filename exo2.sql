-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas
-- de framework ne pas l'afficher.

SELECT `languages`.`name` AS `languageName`, `frameworks`.`name` AS `frameworkName`
FROM `frameworks`
INNER JOIN `languages` ON `languages`.`id` = `frameworks`.`languagesId`;

-- les alias de colonnes servent à personnaliser le libellé des colonnes du RESULT SET

-------------------------------------------------------------------------------
--- Ecriture alternative avec des alias de table--
------------------------------------------------------------------------------
SELECT `lgg`.`name` AS `languageName`, `fwk`.`name` AS `frameworkName`
FROM `frameworks` AS `fwk`
INNER JOIN `languages` AS `lgg`
  ON `lgg`.`id` = `fwk`.`languagesId`;

-- les alias de tables servent à alleger l'ecriture de requettes longues
