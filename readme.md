# Data Engineer Test

This is the data set you will be working with, it has been prepared to be ingested in to AWS RedShift, but you many use which ever Database you feel comfortable with.
It is a simplified model of a small subset of the data that you will be working with at EonX.

There are two schemas representing two separate projects.
Key terms:
- rewards - the EonX rewards platform
- payment_gateway - the EonX payments platform
- provider - represents a client business
- ewallet - an electronic wallet which users can add or remove funds to (ie. paypal)

You are to use these tables to infer a model to produce the following reports.  
The desired output is the SQL to create the models, and the SQL to generate the report data.

- total number of users registered on the platform.
- total number of users registered by provider.
- a cumulative timeline of users joined by provider.
- a month on month comparison of users joined per provider.

- current ewallet balance for every ewallet.
- current total ewallet balance for every rewards user.
- rewards users without an ewallet.
- an end of day ewallet balance for every rewards user from the dates 2020-09-01 - 2021-09-30  (every user and day must be included).
- for every ewallet the first transaction that caused the balance to be negative. 

