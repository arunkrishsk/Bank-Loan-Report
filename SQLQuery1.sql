SELECT * FROM Bank_Loan

SELECT COUNT(id) AS Total_Loan_Applications FROM Bank_Loan

SELECT ROUND(AVG(dti),4)*100 AS PMTD_AVG_DTI FROM Bank_Loan
WHERE MONTH(issue_date)= 11