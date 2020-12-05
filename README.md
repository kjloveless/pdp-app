Right now this is just a basic python app that creates two tables and a database in PostgeSQL.  
I created this using Docker to containerize the processes. So a user/dev should be able to clone this repo and begin using it with just `docker-compose up`.  

I know right now there can be a race condition for the db to begin accepting conditions.  
I think this can be fixed with a wait-for script in the composing depends-on section.  

I also need to check for the table's upon start up to avoid trying to create duplicated tables.


If anyone has advice for how to pre-populate the pgadmin servers.json I would appreciate it. Right now there's some funny behavior before being able to see the table's in the pgadmin UI. I'm not sure if this is from the way I have my servers.json setup or if it's how I'm creating the tables and database to begin with. 