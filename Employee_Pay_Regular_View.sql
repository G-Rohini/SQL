Create view EmployeePay as
Select 
P.[FirstName],
P.[LastName],
P.[Title],
E.[NationalIDNumber],
E.[LoginID],
E.[OrganizationNode],
E.[OrganizationLevel],
E.[JobTitle],
E.[BirthDate],
E.[MaritalStatus],
E.[Gender],
E.[HireDate],
E.[SalariedFlag],
S.[Rate],
S.[PayFrequency]
from 
[HumanResources].[Employee] E
join [Person].[Person] P
on E.BusinessEntityID=P.BusinessEntityID
join [HumanResources].[EmployeePayHistory] S
on E.BusinessEntityID=S.BusinessEntityID

