-- Books grouped by size range in MB
 select ranges."range", count(public.core_book.published_year) as "number of books"
  from
  (
     select 1800 minRange, 1850 maxRange, '1800-1850' "range"
      union all
     select 1851, 1900, '1851-1900'
     union all
     select 1901, 1950, '1901-1950'
	 union all
     select 1951, 2000, '1951-2000'
	 union all
     select 2001, 2050, '2000+'
  ) as ranges
  left join public.core_book
    on extract(year from public.core_book.published_year) between ranges.minRange and ranges.maxRange  
 group by ranges.range
 order by left(ranges.range,4)
