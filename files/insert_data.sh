#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

FILE="games.csv"
  ARRAY=()

  while read -r line; do
              ARRAY+=("$line")
  done < "$FILE"

  unset 'ARRAY[0]' 

  for line in "${ARRAY[@]}"; do
            IFS=',' read -ra ADDR <<< "$line"
            
            $PSQL "INSERT INTO teams (name) VALUES ('${ADDR[2]}') on conflict (name) do nothing;"
            $PSQL "INSERT INTO teams (name) VALUES ('${ADDR[3]}') on conflict (name) do nothing;"

  done

  $PSQL "DELETE FROM games;"

  for line in "${ARRAY[@]}"; do
            IFS=',' read -ra ADDR <<< "$line"
            
            winner_id=$($PSQL "SELECT team_id FROM public.teams WHERE name = '${ADDR[2]}'")
            opponent_id=$($PSQL "SELECT team_id FROM public.teams WHERE name = '${ADDR[3]}'")

            $PSQL "INSERT INTO games (year, round, winner_goals, opponent_goals, winner_id, opponent_id) VALUES (${ADDR[0]}, '${ADDR[1]}', ${ADDR[4]}, ${ADDR[5]}, $winner_id, $opponent_id);"

            
  done

# Do not change code above this line. Use the PSQL variable above to query your database.