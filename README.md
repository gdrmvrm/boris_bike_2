# Boris Bikes Pairing Challenge

First pairing challenge during week 1 of the Makers Academy course.

Pairing partners: [Valentina Maggio](https://github.com/valentina-maggio) and [Gayathri Dharmavaram](https://github.com/gdrmvrm)


## User Stories Keywords

Table and diagram representation of user stories.

| Object | Message |
| --- | --- |
| Person | |
| Bike | working? |
| DockingStation | release_bike |

Bike <-- working? --> true/false<br  />
DockingStation <-- release_bike --> a Bike

## From a Domain Model to a Feature Test

* We started IRB and tried to set a variable docking_station equal to a new DockingStation object, and we received the error "uninitialized constant DockingStation"

```shell 
Traceback (most recent call last):
        4: from /Users/Valentina/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `<main>'
        3: from /Users/Valentina/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `load’
        2: from /Users/Valentina/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in `<top (required)>'
        1: from (irb):1:in `<main>'
NameError (uninitialized constant DockingStation)
```

* File path where the error happened:

/Users/Valentina/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in

* "The Uninitialized Constant error is a variation of a regular NameError exception class. It has several possible causes. You'll see this error when the code refers to a class or module that it can't find, often because the code doesn't include require, which instructs the Ruby file to load the class."

* We will create a class for the DockingStation object