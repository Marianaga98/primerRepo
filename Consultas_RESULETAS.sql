{\rtf1\ansi\ansicpg1252\cocoartf2636
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /*CONSULTAS PARA CASA*/\
\
/*MARIANA GONZALEZ Alzueta*/\
\
\
\
/*Muestra el nombre del evento base junto con el g\'e9nero de los participantes de cada uno como "G\'e9nero"*/\
SELECT event, event_gender as "G\'e9nero"\
FROM olym.olym_events\
INNER JOIN olym.olym_base_events on olym.olym_base_events.id = olym.olym_events.base_event_id;\
\
\
/*Muestra el nombre de cada atleta junto con la/s medalla/s que obtuvo\
NOTA: Pueden aparecer atletas repetidos ya que algunos participan en m\'e1s de un evento*/\
SELECT athlete_name, medal as "Medalla"\
FROM olym.olym_athlete_games\
INNER JOIN olym.olym_athletes on olym.olym_athletes.id = olym.olym_athlete_games.athlete_id\
INNER JOIN olym.olym_medals on olym.olym_medals.athlete_game_id = olym.olym_athlete_games.id;\
\
\
/*Muestra las naciones y el n\'famero de atletas de cada una de ellas como "N\'famero de atletas"*/\
SELECT nation, count(DISTINCT athlete_id) as "N\'famero de atletas"\
FROM olym.olym_athlete_games\
INNER JOIN olym.olym_nations on olym.olym_nations.id = olym.olym_athlete_games.nation_id\
GROUP BY nation;\
\
\
}