#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=salon -t --no-align -c"

# $PSQL "DROP TABLE IF EXISTS customers, services, appointments;" &>/dev/null

# $PSQL "CREATE TABLE IF NOT EXISTS customers (
#   customer_id SERIAL PRIMARY KEY,
#   phone VARCHAR(255) UNIQUE,
#   name VARCHAR(255)
# );" &>/dev/null

# $PSQL "CREATE TABLE IF NOT EXISTS services (
#   service_id SERIAL PRIMARY KEY,
#   name VARCHAR(255)
# );" &>/dev/null

# $PSQL "CREATE TABLE IF NOT EXISTS appointments (
#   appointment_id SERIAL PRIMARY KEY,
#   customer_id INT NOT NULL,
#   CONSTRAINT fk_customers_appointments FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
#   service_id INT NOT NULL,
#   CONSTRAINT fk_services_appointments FOREIGN KEY (service_id) REFERENCES services(service_id),
#   time VARCHAR(255)
# );" &>/dev/null

# $PSQL "INSERT INTO services (name) VALUES ('cut');" &>/dev/null
# $PSQL "INSERT INTO services (name) VALUES ('color');" &>/dev/null
# $PSQL "INSERT INTO services (name) VALUES ('trim');" &>/dev/null

message="Welcome to My Salon, how can I help you?"
is_initital=true
SERVICE_ID_SELECTED="0"
services=("1" "2" "3")

echo -e "~~~~~ MY SALON ~~~~~\n"

while ! [[ ${services[@]} =~ $SERVICE_ID_SELECTED ]]
do
echo -e "\n$message"
message="I could not find that service. What would you like today?"
echo -e "
1) cut
2) color
3) trim
";
read SERVICE_ID_SELECTED;
done

SERVICE_ID_SELECTED=$((SERVICE_ID_SELECTED))
echo -e "\nWhat's your phone number?" 
read CUSTOMER_PHONE

if [ "$CUSTOMER_PHONE" != "" ];then
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
    
    if [ "$CUSTOMER_ID" == "" ];then
        echo -e "\nI don't have a record for that phone number, what's your name?" 
        read CUSTOMER_NAME
        $PSQL "INSERT INTO customers (phone, name) VALUES ('$CUSTOMER_PHONE', '$CUSTOMER_NAME');" &>/dev/null
        CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE' AND name = '$CUSTOMER_NAME'")
    fi
    CUSTOMER=$($PSQL "SELECT * FROM customers WHERE customer_id = $CUSTOMER_ID")
    IFS='|' read -ra ROW <<< "$CUSTOMER"

    echo -e "What time would you like your cut, ${ROW[2]}?"
    read SERVICE_TIME
    if [ "$SERVICE_TIME" != "" ];then
        $PSQL "INSERT INTO appointments (customer_id, service_id, time) VALUES ($CUSTOMER_ID, '$SERVICE_ID_SELECTED', '$SERVICE_TIME');" &>/dev/null
        SERVICE=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
        echo -e "\nI have put you down for a $SERVICE at $SERVICE_TIME, ${ROW[2]}."
    fi
fi