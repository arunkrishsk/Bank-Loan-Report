SELECT * FROM Bank_Loan

SELECT 
   loan_status,
   COUNT(id) AS Total_loan_Applications,
   SUM(loan_amount) as Total_Funded,
   SUM(total_payment) as Amount_Received,
   SUM(int_rate * 100) as Interest_rate,
   AVG(dti*100) AS DTI
FROM
    Bank_Loan
GROUP BY
    loan_status

SELECT 
	loan_status,
	SUM(loan_amount) AS MTD_Total_amount_funded,
	SUM(total_payment) AS MTD_Total_amount_Received

FROM BanK_loan
WHERE MONTH(issue_date)=12
GROUP BY loan_status