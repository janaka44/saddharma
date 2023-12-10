SELECT * FROM public.core_booktemp where catalog_no='RA0056';

SELECT * FROM public.core_booktemp where title is null
--
ධම්මවිචය ඡට්ට සංගායනා ග්‍රන්ථ -> ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
ත්‍රිපිටක සූචි -> ත්‍රිපිටක සුචි
පාලි අට්ටකතා  -> පාලි අටුවා
පාලි ව්‍යාකරණ -> පාලි ව්‍යාකරණ ග්‍රන්ථ 
Na uyana > Na Uyana
pali -> Pali
සුචි; ශබ්ධකෝෂ; -> සුචි / ශබ්ධකෝෂ
වෙනත් ත්‍රිපිටක -> වෙනත් ත්‍රිපිටක ග්‍රන්ථ
සිංහල අට්ටකථා -> සිංහල අටුවා
--

UPDATE public.core_booktemp  
SET category2= 'සිංහල අටුවා'
where category2= 'සිංහල අට්ටකථා'

commit

