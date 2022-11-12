# NightScoutSynology
Basic docker compose deployment for Synology NAS

## WIP / Short description

## Requirements:

- Synology 7.1 NAS with Docker installed form the Package Center.
- SSH access enabled (sudo rights)
- A Shared folder created form the Synology Dashboard (e.g: Applications/Nighscout)

## Setup:

- Copy the project files to the Synology shared folder though SSH or file upload.
- Edit/verify .env
- Edit/verify the _ns*.env_ setting files 

### Startup:

SSH into the Synology box and make the shared folder loaction the current directory (e.g: cd /volume1/Applications/Nighscout)

- Startup using the start.sh script (you will need sudo richts and are asked for the users password)
- Verify all containers start without errors.
- Open the Synology Dashbaord and validate you see the 3 Docker containers running.

The Nighscroout site will only be locally accessible on IP/port _0.0.0.0:1337_ or _localhost:1337_. To very run the following command from the SSH prompt:

	curl localhost:1337

# TODO: Add configuration for making the site accessible.

# TIP

If you already have an external MongoDB in use (like on Heroku/Atlas), cheout the scripts under _mongo/heroku_.