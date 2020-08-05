# SQL-Group-top-players
SQL challenge Group top players 
we have 2 tables players and matches defiend as below :
CREATE TABLE `players` (
  `player_id` int NOT NULL,
  `group_id` int NOT NULL,
  UNIQUE KEY `player_id` (`player_id`)
)
CREATE TABLE `matches` (
  `match_id` int NOT NULL,
  `first_player` int NOT NULL,
  `second_player` int NOT NULL,
  `first_score` int NOT NULL,
  `second_score` int NOT NULL,
  UNIQUE KEY `match_id` (`match_id`)
)

each player belong to one group only and matches table keep reocrds of the matches results where first_score holds first_player scores and second_score holds second_player scores.
the request is to get the top first players in each group where ranking is based on totatl matches scores.
the required output :
# group_id, player_id.

sample date for matches :
# match_id, first_player, second_player, first_score, second_score
'1', '30', '45', '10', '12'
'2', '20', '50', '5', '5'
'5', '30', '65', '3', '15'
'13', '65', '45', '10', '10'
'42', '45', '65', '8', '4'

sample data for players :
# player_id, group_id
'20', '2'
'30', '1'
'40', '3'
'45', '1'
'50', '2'
'65', '1'

I worked on this task with 2 approaches:
The first is based on calculating the score for each player sum(score)
the second is based on winnings number count (wining)

