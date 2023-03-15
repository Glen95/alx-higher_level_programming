-- Lists all genres in the database hbtn_0d_tvshows_rate by their rating.
-- Records are ordered by descending rating.
SELECT tv_genres.name, SUM(ratings.rating) AS rating_sum
FROM tv_shows
JOIN show_genres ON tv_shows.id = show_genres.tv_show_id
JOIN tv_genres ON show_genres.genre_id = tv_genres.id
JOIN ratings ON tv_shows.id = ratings.tv_show_id
GROUP BY tv_genres.id
ORDER BY rating_sum DESC;
