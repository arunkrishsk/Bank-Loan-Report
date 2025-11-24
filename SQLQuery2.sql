USE Bank_Loan_DB
SELECT * FROM Bank_Loan

SELECT (COUNT(CASE WHEN loan_status= 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0)
		/ 
		COUNT(id) AS Good_loan_Percentage
FROM Bank_Loan

SELECT COUNT(id) AS Good_loan_Applications FROM Bank_Loan
WHERE loan_status IN ('Fully Paid','Current')

WHERE loan_status= 'Fully Paid' OR loan_status = 'Current'


SELECT SUM(loan_amount) AS Good_loan_Funded FROM Bank_Loan
WHERE loan_status IN ('Fully Paid','Current')

SELECT SUM(total_payment) AS Good_loan_Received FROM Bank_Loan
WHERE loan_status IN ('Fully Paid','Current')

SELECT (COUNT(CASE WHEN loan_status= 'Charged Off' THEN id END) * 100.0)
		/ 
		COUNT(id) AS Bad_loan_Percentage
FROM Bank_Loan

SELECT COUNT(id) AS Bad_loan_Applications FROM Bank_Loan
WHERE loan_status IN ('Charged Off')

SELECT SUM(loan_amount) AS Bad_loan_Funded FROM Bank_Loan
WHERE loan_status IN ('Charged Off')

SELECT SUM(total_payment) AS Bad_loan_Received FROM Bank_Loan
WHERE loan_status IN ('Charged Off')

