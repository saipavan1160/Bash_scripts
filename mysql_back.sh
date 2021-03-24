#!/bin/bash

host=localhost; user=root; passwd=XXXX;

#d_time=`date +%Y-%m-%d`
#where
#pavan=database_name
#pavansai=table_in_database_pavan
#date=column

mysql -h$host -u$user -p$passwd  pavan -e "delete from pavansai where date = '2021-03-24'"

exit 0


