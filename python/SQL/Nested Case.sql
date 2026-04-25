select * from Products

-- we need to group the data based on columns category & price into different categories i.e affordable & premium
select *,
case 
 when category='Electronics' then 
	case when price>=300 then 'Premium Electronics'
	else 'Affordable Electronics'
	end
 when Category ='Furniture' then
	case when price>=250 then 'Premium Furniture'
	else 'Affordable Furniture'
	end 
else
	case when price>=25 then 'Premium Accessories'
	else 'Affordable Accessories'
	end
end as [Groups]
from Products

-----test
select *,
case 
 when category='Electronics' then 
	case when price>=300 then 'Premium Electronics'
	else 'Affordable Electronics'
	end
 when Category ='Furniture' then
	case when price>=250 then 'Premium Furniture'
	else 'Affordable Furniture'
	end 
when category in ('Accessories') then
	case when price>=25 then 'Premium Accessories'
	else 'Affordable Accessories'
	end
end as [Groups]
from Products