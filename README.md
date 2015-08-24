# README

This is Haikeuken, the Haiku Package Build System.

Haikeuken instucts worker Haiku systems to build recipies and displays recipe
lint results

[![Code Climate](https://codeclimate.com/github/kallisti5/haikeuken/badges/gpa.svg)](https://codeclimate.com/github/kallisti5/haikeuken)

## Requirements

*   Database server URL in environment export
    DATABASE_URL=postgres://username:password@server:port/databasename
*   TODO


## Important commands

*   ``rake db:reset`` - Empty the database
*   ``rake db:migrate`` -  Create the database
*   ``rake db:seed`` -  Populate some basic data to get started


### Automated jobs

You will like want to automate these rake tasks to keep current data

*   ``rake recipe:sync`` - Syncs the database of recipes with haikuports
*   ``rake recipe:lint`` - Performs a lint scan of the current recipes
*   ``rake package:sync`` - Syncs the database of known packages with the known repos

## Installation

*   Execute ``bundle install`` to install the needed gems
*   Perform a ``rake db:migrate`` to create and seed the database
*   Modify your config/environments/ environment to match the location of
    your haikuports repo and haikuporter repo
*   Start the server using ``bundle exec puma``
*   Perform a ``rake recipe:sync`` to pull all of the recipes into the database
*   Perform a ``rake recipe:lint`` to perform a haikuporter lint on each recipe
*   Configure remote repos at http://server/repos (an example is seeded)
*   Perform a ``rake package:sync`` to scan remote repos for packages
*   Schedule a refresh of the haikuporter and haikuports repos
*   Schedule a ``rake recipe:sync``, ``rake recipe:lint``, and ``rake package:sync``.


## Builders

*   Client builders can be found in the haikeuken-client repo

