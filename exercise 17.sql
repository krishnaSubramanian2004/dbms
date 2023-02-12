Use the CREATE TRIGGER statement syntax to create a new trigger:

CREATE TRIGGER <trigger name> <trigger time > <trigger event>
ON <table name>
FOR EACH ROW
<trigger body>;

The best practice is to name the trigger with the following information:

<trigger time>_<table name>_<trigger event>

For example, if a trigger fires before insert on a table named employee, the best convention is to call the trigger:

before_employee_insert

Alternatively, a common practice is to use the following format:

<table name>_<first letter of trigger time><first letter of trigger name>

The before insert trigger name for the table employee looks like this:

employee_bi

The trigger executes at a specific time of an event on a table defined by <table name> for each row affected by the function.

Delete Triggers
To delete a trigger, use the DROP TRIGGER statement:

DROP TRIGGER <trigger name>;

Alternatively, use:

DROP TRIGGER IF EXISTS <trigger name>;
