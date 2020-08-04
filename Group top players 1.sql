use sales;
with q as (
select players.group_id ,players.player_id,
sum( case when matches.first_player=player_id then matches.first_score
 when matches.second_player=player_id then matches.second_score end) score_t
 from players, matches
 where player_id=first_player or player_id= second_player
 group by player_id
 order by score_t desc)
 select group_id,player_id
 from q
group by group_id 


 
 

 

