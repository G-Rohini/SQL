;with CTE as
(select 
[EmployeeID],
max([TotalDue]) as MaxTotalDue 
from 
[Purchasing].[PurchaseOrderHeader]
group by [EmployeeID]) 
Select CTE.*, POH.[ShipDate], POH.[PurchaseOrderID]
From [Purchasing].[PurchaseOrderHeader] POH
Join CTE on POH.EmployeeID=CTE.EmployeeID
AND CTE.MaxTotalDue=POH.TotalDue
ORDER BY poh.EmployeeID, poh.ShipDate desc





