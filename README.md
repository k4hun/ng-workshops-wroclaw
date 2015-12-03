RoR Workshops
================

[![Build Status](https://travis-ci.org/k4hun/ng-workshops-wroclaw.svg?branch=master)](https://travis-ci.org/k4hun/ng-workshops-wroclaw)

### :hash: App description
-------------
Simple application for managing school subjects, teaching staff and students.

### :closed_lock_with_key: Technology stack
-------------

| Name |  Version |
| :--: | :---: |
| [Ruby](https://www.ruby-lang.org) | 2.2.3 |
| [Ruby on Rails](http://www.rubyonrails.org/) | 4.2.1 |
| [PostgreSQL](http://www.postgresql.org/) | 9.3 |

### :book: Setup
-------------
1. clone repository,
2. `cd path/to/repo`,
3. `cp config/database.yml.sample config/database.yml`,
4. `createuser -s workshops`,
5. `rake db:create db:schema:load`


### :information_source: Heroku
-------------
* [https://ng-workshops-wroclaw.herokuapp.com/](https://ng-workshops-wroclaw.herokuapp.com/)

* login: admin@admin.com 
	pass: adminadmin
