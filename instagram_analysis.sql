-- Using Instagram Dataset 
use ig_clone;
-- 1. List the user.
SELECT * FROM users;

-- 2. Count total Photos
SELECT count(*) FROM photos;

-- 3. Find the user who never posted (Inactive user)
select u.id , u.username
from users u
left join photos p on u.id = p.user_id
where p.id is null;

-- 4. List all hashtags
select tag_name from tags;

-- 5. Number of Comments per photo
select photo_id, count(*) as comment_count
from comments
group by photo_id;

-- 6. Top 5 Oldest users (Loyal User)
select id, username, created_at
from users
order by created_at asc
limit 5;

-- 7. User with most likes on a single photo (Contest Winner)
select p.id as photo_id, p.image_url, p.user_id, p.user_id, u.username, count(l.user_id)
as like_count
from photos p
join likes l on p.id = l.photo_id
join users u on p.user_id = u.id
group by p.id
order by like_count desc
limit 1;

-- 8. Top 5 most used hashtags (Hashtag Research)
select t.tag_name, count(*) as usage_count
from photo_tags pt
join tags t on pt.tag_id = t.id
group by t.tag_name
order by usage_count desc
limit 5;

-- 9. Week with most user registration ( Ad Campaign Launch)
select dayname(created_at) as day_of_week, count(*) as num_registrations
from users
group by day_of_week
order by num_registrations desc
limit 1;

-- 10. Average posts per user (User Engagemen)
select round(count(*)/(select count(*)
from users),2)
as avg_posts_per_user
from photos ;

-- 11.Bots & Fake Accounts
select u.id, u.username
from users u
where (
	select count(*) from likes where user_id = u.id) = (select count(*) from photos);
    
    
    SELECT u.id, u.username
FROM users u
LEFT JOIN photos p ON u.id = p.user_id
WHERE p.id IS NULL;