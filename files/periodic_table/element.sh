#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

$PSQL "ALTER TABLE properties RENAME COLUMN weight TO atomic_mass" &>/dev/null
$PSQL "ALTER TABLE properties RENAME COLUMN melting_point TO melting_point_celsius" &>/dev/null
$PSQL "ALTER TABLE properties RENAME COLUMN boiling_point TO boiling_point_celsius" &>/dev/null
$PSQL "ALTER TABLE properties ALTER COLUMN melting_point_celsius SET NOT NULL" &>/dev/null
$PSQL "ALTER TABLE properties ALTER COLUMN boiling_point_celsius SET NOT NULL" &>/dev/null
$PSQL "ALTER TABLE elements ADD CONSTRAINT unique_symbol UNIQUE (symbol)" &>/dev/null
$PSQL "ALTER TABLE elements ADD CONSTRAINT unique_name UNIQUE (name)" &>/dev/null
$PSQL "ALTER TABLE elements ALTER COLUMN symbol SET NOT NULL" &>/dev/null
$PSQL "ALTER TABLE elements ALTER COLUMN name SET NOT NULL" &>/dev/null
$PSQL "ALTER TABLE properties ADD FOREIGN KEY (atomic_number) REFERENCES elements (atomic_number)" &>/dev/null

$PSQL "DROP TABLE IF EXISTS types" &>/dev/null

$PSQL "CREATE TABLE IF NOT EXISTS types (
  type_id SERIAL PRIMARY KEY,
  type VARCHAR(255) NOT NULL
);" &>/dev/null

$PSQL "INSERT INTO types (type) (SELECT DISTINCT(type) FROM properties)" &>/dev/null
$PSQL "ALTER TABLE properties ADD COLUMN type_id INT DEFAULT NULL" &>/dev/null
$PSQL "UPDATE properties SET type_id = sub.type_id FROM (SELECT types.type_id, types.type FROM types) AS sub WHERE properties.type = sub.type" &>/dev/null
$PSQL "ALTER TABLE properties ALTER COLUMN type_id SET NOT NULL" &>/dev/null
$PSQL "ALTER TABLE properties ADD FOREIGN KEY (type_id) REFERENCES types (type_id)" &>/dev/null
$PSQL "UPDATE elements SET symbol = UPPER(symbol)" &>/dev/null
$PSQL "ALTER TABLE properties ALTER COLUMN atomic_mass TYPE REAL" &>/dev/null
$PSQL "UPDATE properties SET atomic_mass = atomic_mass::REAL" &>/dev/null

$PSQL "DELETE FROM properties WHERE atomic_number = 9" &>/dev/null
$PSQL "DELETE FROM elements WHERE atomic_number = 9" &>/dev/null
$PSQL "DELETE FROM properties WHERE atomic_number = 10" &>/dev/null
$PSQL "DELETE FROM elements WHERE atomic_number = 10" &>/dev/null
$PSQL "DELETE FROM properties WHERE atomic_number = 1000" &>/dev/null
$PSQL "DELETE FROM elements WHERE atomic_number = 1000" &>/dev/null

$PSQL "INSERT INTO elements (atomic_number, symbol, name) VALUES (9, 'F', 'Fluorine')" &>/dev/null
$PSQL "INSERT INTO properties (atomic_number, atomic_mass, melting_point_celsius, boiling_point_celsius, type_id) VALUES (9, 18.998, -220, -188.1, 3)" &>/dev/null
$PSQL "INSERT INTO elements (atomic_number, symbol, name) VALUES (10, 'Ne', 'Neon')" &>/dev/null
$PSQL "INSERT INTO properties (atomic_number, atomic_mass, melting_point_celsius, boiling_point_celsius, type_id) VALUES (10, 20.18, -248.6, -246.1, 3)" &>/dev/null
$PSQL "ALTER TABLE properties DROP COLUMN IF EXISTS type" &>/dev/null

if [ "$#" -eq 0 ]; then
  echo "Please provide an element as an argument."
  exit
fi

arg1=$1

result=$($PSQL "SELECT elements.*, types.type, properties.atomic_mass, properties.melting_point_celsius, properties.boiling_point_celsius FROM elements INNER JOIN properties ON elements.atomic_number = properties.atomic_number INNER JOIN types ON types.type_id = properties.type_id WHERE elements.atomic_number::text = '$arg1' OR elements.symbol = '$arg1' OR elements.name = '$arg1'")

if [ "$result" != "" ]
then
  IFS='|' read -ra ROW <<< "$result"
  echo "The element with atomic number ${ROW[0]} is ${ROW[2]} (${ROW[1]}). It's a ${ROW[3]}, with a mass of ${ROW[4]} amu. ${ROW[2]} has a melting point of ${ROW[5]} celsius and a boiling point of ${ROW[6]} celsius."
else
  echo "I could not find that element in the database."
fi