# rgclone_flyway_gradle

## Objective:

Create a build that does the following:

1. Create an ephemeral data-container with Redgate Clone. (This mocks a "production" database instance.)
2. Run Flyway migrate against a database on that container. (To perform a mock test deployment.) 
3. Deletes the data container upon completion.

This build could, in theory, be extended to include production migrations, if the test migrations are successful.

The aim in this case is to keep the code as simple as possible, and to keep as much of the complexity as possible in gradle. That way, anyone can take this gradle and run it wherever they like.

## Current status

So far, only objective 1 has been implemented. A simple Flyway project exists in this repository, but it is not yet used for anything.

Arguably objective 3 is also met, because the data-containers are set to delete themselves after 5 minutes, but this is likely to change.

## How this works

The Flyway project exists in "./flyway". There is a "flyway.conf" file to hold various configuration, and a "migrations" folder that holds some database migration scripts.

There is a "./gradle" folder that contains all the build logic. The important file is "build.gradle". This contains the gradle code for performing various tasks:

- setupRgCloneCli: Downloads the rgclone command line tool and uses it to authenticate against a Redgate Clone server.
- createDataContainer: Creates the data container.
- getAll: Logs all the images and containers that the Redgate Clone user has Access to.

There is a GitHub action saved at: ".github/workflows/build-gradle-project.yml"

This action calls gradle to perform the tasks above. It provides a couple of parameters which are necessary to access and authenticate against a Redgate Clone server:

- RGCLONE_ENDPOINT 
- RGCLONE_TOKEN 

## How to fork and run this yourself

Install your own Redgate Clone instance and create an appropriate data-image:
https://documentation.red-gate.com/redgate-clone/installation

Fork the repo, and create repository secrets to securely hold the URL and credentials for your own RgClone instance:

- RGCLONE_ENDPOINT 
- RGCLONE_TOKEN 

Review the "createDataContainer" task in "./gradle/build.gradle" and update the id of the data-image.
