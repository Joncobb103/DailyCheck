select r.* 
from developer.rocrv r 
left join developer.parcels_in_deposits2 p on p.old_fig_deposits_record_id = r.deposit_id 
join billy.depvalld d on r.deposit_id = d.id 
where r.deposit_date='(REPLACE DATE)' 
--and r.district_full_name  in 
--and d.district_full_name in 
--(
--'ABSECON (ATLANTIC, NJ)'
--,'ASBURY PARK (MONMOUTH, NJ)'
--,'ATLANTIC CITY (ATLANTIC, NJ)'
--,'BARNEGAT (OCEAN, NJ)'
--,'BRIDGETON (CUMBERLAND, NJ)'
--,'BURLINGTON (BURLINGTON, NJ)'
--,'CAMDEN CITY (CAMDEN, NJ)'
--,'CARNEYS POINT (SALEM, NJ)'
--,'CARTERET (MIDDLESEX, NJ)'
--,'CLIFTON (PASSAIC, NJ)'
--,'DEPTFORD (GLOUCESTER, NJ)'
--,'EAST BRUNSWICK (MIDDLESEX, NJ)'
--,'EAST ORANGE (ESSEX, NJ)'
--,'EGG HARBOR (ATLANTIC, NJ)'
--,'ELIZABETH (UNION, NJ)'
--,'EVESHAM (BURLINGTON, NJ)'
--,'GALLOWAY (ATLANTIC, NJ)'
--,'GLOUCESTER TOWNSHIP (CAMDEN, NJ)'
--,'HAMILTON (MERCER, NJ)'
--,'HAMPTON (HUNTERDON, NJ)'
--,'HAZLET (MONMOUTH, NJ)'
--,'HIGHLANDS (MONMOUTH, NJ)'
--,'HILLSBOROUGH (SOMERSET, NJ)'
--,'HILLSIDE (UNION, NJ)'
--,'HOPATCONG (SUSSEX, NJ)'
--,'IRVINGTON (ESSEX, NJ)'
--,'JACKSON (OCEAN, NJ)'
--,'KEANSBURG (MONMOUTH, NJ)'
--,'LACEY (OCEAN, NJ)'
--,'LAKEWOOD (OCEAN, NJ)'
--,'LINDEN (UNION, NJ)'
--,'LINDENWOLD (CAMDEN, NJ)'
--,'LONG BRANCH (MONMOUTH, NJ)'
--,'MANTUA (GLOUCESTER, NJ)'
--,'MAPLEWOOD (ESSEX, NJ)'
--,'MARLBORO (MONMOUTH, NJ)'
--,'MATAWAN (MONMOUTH, NJ)'
--,'MEDFORD (BURLINGTON, NJ)'
--,'MIDDLE TOWNSHIP (CAPE MAY, NJ)'
--,'MILLVILLE (CUMBERLAND, NJ)'
--,'NEPTUNE TOWNSHIP (MONMOUTH, NJ)'
--,'NEWARK (ESSEX, NJ)'
--,'NORTH PLAINFIELD (SOMERSET, NJ)'
--,'OCEAN (MONMOUTH, NJ)'
--,'OCEAN (OCEAN, NJ)'
--,'OXFORD (WARREN, NJ)'
--,'PASSAIC (PASSAIC, NJ)'
--,'PATERSON (PASSAIC, NJ)'
--,'PAULSBORO (GLOUCESTER, NJ)'
--,'PENNS GROVE (SALEM, NJ)'
--,'PEQUANNOCK (MORRIS, NJ)'
--,'PISCATAWAY (MIDDLESEX, NJ)'
--,'PLEASANTVILLE (ATLANTIC, NJ)'
--,'POINT PLEASANT (OCEAN, NJ)'
--,'ROCKAWAY TOWNSHIP (MORRIS, NJ)'
--,'SALEM CITY (SALEM, NJ)'
--,'TEANECK (BERGEN, NJ)'
--,'TOMS RIVER (OCEAN, NJ)'
--,'TRENTON (MERCER, NJ)'
--,'TUCKERTON (OCEAN, NJ)'
--,'UNION CITY (HUDSON, NJ)'
--,'VINELAND (CUMBERLAND, NJ)'
--,'WASHINGTON (GLOUCESTER, NJ)'
--,'WEST ORANGE (ESSEX, NJ)'
--,'WILLINGBORO (BURLINGTON, NJ)'
--,'WINSLOW (CAMDEN, NJ)'
--,'WOODBRIDGE (MIDDLESEX, NJ)'
--)
and p.old_fig_deposits_record_id is null 
and d.state='NJ'
;