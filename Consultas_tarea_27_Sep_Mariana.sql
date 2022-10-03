
/*CONSULTAS PARA CASA*/
/*SOLUCIONES NOELIA*/

/*Muestra el nombre del evento base junto con el género de los participantes de cada uno como "Género"*/
SELECT event, event_gender as "Genero"
FROM olym.olym_events
INNER JOIN olym.olym_base_events on olym.olym_events.base_event_id = olym.olym_events.id;v

/*Muestra el nombre de cada atleta junto con la/s medalla/s que obtuvo\
NOTA: Pueden aparecer atletas repetidos ya que algunos participan en más de un evento*/
NOTA: Pueden aparecer atletas repetidos ya que algunos participan en más de un evento*/
SELECT  athlete_name, medal
FROM olym.olym_athlete_games
INNER JOIN olym.olym_athletes on olym.olym_athlete_games.athlete_id  = olym.olym_athletes.id
INNER JOIN olym.olym_medals  on olym.olym_medals.athlete_game_id =   olym.olym_athlete_games.id;

/*Muestra las naciones y el número de atletas de cada una de ellas como "Número de atletas"*/
SELECT nation, count(athlete_id) as "numero de atletas"
FROM olym.olym_athlete_games
INNER JOIN olym.olym_nations on olym.olym_athlete_games.nation_id =  olym.olym_nations.id
GROUP BY nation;




