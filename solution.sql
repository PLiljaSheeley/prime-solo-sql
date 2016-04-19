--Get all users from Chicago.
SELECT city, username FROM syntax_practice
	WHERE City = 'chicago'

--Get all users with usernames that contain the letter a.
SELECT city, username FROM syntax_practice
	WHERE username like 'a%'

--The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
SELECT city, username FROM syntax_practice
	WHERE transactions_attempted = '0' and account_balance = '0'

--Select all users that have attempted 9 or more transactions.
SELECT city, username FROM syntax_practice
	WHERE transactions_attempted > '9'

--Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
SELECT city, username FROM syntax_practice
	ORDER BY account_balance DESC LIMIT 3

--Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
SELECT city, username FROM syntax_practice
	ORDER BY account_balance LIMIT 3

--Get all users with account balances that are more than $100.
SELECT city, username FROM syntax_practice
	ORDER BY account_balance > '100'

--Add a new record.
INSERT INTO syntax_practice

--The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
DELETE FROM syntax_practice
WHERE (city = 'miami' OR city = 'phoenix') AND (transactions_completed < '5')