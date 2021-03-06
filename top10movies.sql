SELECT *
FROM title t
JOIN movie_info_idx AS mi1 ON mi1.movie_id = t.id
JOIN movie_info_idx AS mi2 ON mi2.movie_id = t.id
JOIN cast_info as cast on cast.movie_id = t.id
join name as name_cast on name_cast.id = cast.person_id
WHERE t.kind_id = 1 
  AND mi1.info_type_id = 100
  AND mi2.info_type_id = 101
  AND mi1.info > 100000
  and cast.role_id  in (3, 4, 8)
  group by t.title
ORDER BY mi2.info desc
LIMIT 10;
