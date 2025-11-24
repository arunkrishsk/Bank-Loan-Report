USE Bank_Loan_DB

SELECT * FROM Bank_Loan

	SELECT 
		  address_state,
		  COUNT(id) AS Total_loan_Applications,
		  SUM(loan_amount) AS Total_funded_amount,
		  SUM(total_payment) AS Total_Amount_Received

	FROM Bank_Loan
	GROUP BY address_state
	ORDER BY SUM(loan_amount) DESC

	SELECT 
		  term,
		  COUNT(id) AS Total_loan_Applications,
		  SUM(loan_amount) AS Total_funded_amount,
		  SUM(total_payment) AS Total_Amount_Received

	FROM Bank_Loan
	GROUP BY term
	ORDER BY term

	SELECT 
		  emp_length,
		  COUNT(id) AS Total_loan_Applications,
		  SUM(loan_amount) AS Total_funded_amount,
		  SUM(total_payment) AS Total_Amount_Received

	FROM Bank_Loan
	GROUP BY emp_length
	ORDER BY emp_length

		SELECT 
		  purpose AS Purpose,
		  COUNT(id) AS Total_loan_Applications,
		  SUM(loan_amount) AS Total_funded_amount,
		  SUM(total_payment) AS Total_Amount_Received

	FROM Bank_Loan
	GROUP BY purpose
	ORDER BY purpose


			SELECT 
			  home_ownership AS home_ownership,
			  COUNT(id) AS Total_loan_Applications,
			  SUM(loan_amount) AS Total_funded_amount,
			  SUM(total_payment) AS Total_Amount_Received

		FROM Bank_Loan
		GROUP BY home_ownership
		ORDER BY home_ownership
