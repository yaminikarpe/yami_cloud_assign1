-- Acquiring the top 200,000 posts by ViewCount
-- Using StackExchange system to get 2,00,000 top posts by ViewCount
-- Firstly, I found the maximum number of hits, i.e. 10062790, from the posts table
-- StackExchange allows maximum downloads of 50,000 records at a time. This means we would need to run at least 4 queries from the StackExchange site to extract 200,000 posts

select top 50000 psts.Id,psts.Score,psts.ViewCount,psts.Body, users.Id as OwnerUserId, users.DisplayName,psts.Title,psts.Tags from Posts psts inner join Users users on psts.OwnerUserId=users.Id where psts.ViewCount>1000 and psts.ViewCount < 10062791 order by psts.ViewCount desc
select top 50000 psts.Id,psts.Score,psts.ViewCount,psts.Body, users.Id as OwnerUserId, users.DisplayName,psts.Title,psts.Tags from Posts psts inner join Users users on psts.OwnerUserId=users.Id where psts.ViewCount>1000 and psts.ViewCount < 124974 order by psts.ViewCount desc
select top 50000 psts.Id,psts.Score,psts.ViewCount,psts.Body, users.Id as OwnerUserId, users.DisplayName,psts.Title,psts.Tags from Posts psts inner join Users users on psts.OwnerUserId=users.Id where psts.ViewCount>1000 and psts.ViewCount < 73139 order by psts.ViewCount desc
select top 50000 psts.Id,psts.Score,psts.ViewCount,psts.Body, users.Id as OwnerUserId, users.DisplayName,psts.Title,psts.Tags from Posts psts inner join Users users on psts.OwnerUserId=users.Id where psts.ViewCount>1000 and psts.ViewCount < 52110 order by psts.ViewCount desc
