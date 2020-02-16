Alter view dbo.ProductInvRevw
with schemabinding 
as 
Select 
P.ProductID,
P.[Name],
P.[ProductNumber],
P.[Color],
P.[StandardCost],
P.[ListPrice],
P.[Size],
I.[Shelf],
I.[Bin],
I.[Quantity],
R.[ReviewerName],
R.[ReviewDate],
R.[EmailAddress],
R.[Rating],
R.[Comments]
from 
[Production].[Product] P
join 
[Production].[ProductInventory] I
on P.[ProductID]=I.[ProductID]
left join
[Production].[ProductReview] R
on P.[ProductID]=R.[ProductID]





