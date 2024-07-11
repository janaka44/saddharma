-- Books grouped by size range in MB
 select ranges."range", count(public.core_book.size) as "number of books"
  from
  (
     select 0 minRange, 9 maxRange, '0-9 MB' "range"
      union all
     select 10, 20, '10-20 MB'
     union all
     select 21, 50, '21-50 MB'
	 union all
     select 51, 100, '51-100 MB'
	 union all
     select 101, 150, '101-150 MB'
	  union all
     select 151, 300, '151-300 MB'
	  union all
     select 301, 500, '301-500 MB'
	  union all
     select 501, 1000, '301-500+ MB'
	 order by maxRange
  ) as ranges
  left join public.core_book
    on (public.core_book.size/1024) between ranges.minRange and ranges.maxRange  
 group by ranges.range
