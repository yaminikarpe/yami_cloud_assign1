-- Create new table
CREATE TABLE IF NOT EXISTS yami_table_assign1(Id String, AcceptedAnswerId String, Score int, ViewCount int, Body String, OwnerUserId String, OwnerDisplayName String, LastEditorUserId int, LastEditorDisplayName String, Title String, Tags String, AnswerCount int, CommentCount int, FavoriteCount int, ContentLicense int, Idtwo String,  Reputation int, DisplayName String, WebsiteUrl String, Location String, AboutMe String, Views int, UpVotes int, DownVotes int, ProfileImageUrl String, EmailHash String, AccountId int) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',';

-- Data loading into Hive
LOAD DATA INPATH ‘gs://yami_bucket_merged_cloud_assign1/combine.csv’ INTO TABLE yami_table_assign1;

-- Task 2.1. The top 10 posts by score
SELECT Id,Score,Title FROM yami_table_assign1 WHERE Title IS NOT NULL SORT BY Score DESC LIMIT 10;

-- Task 2.2 The top 10 users by post score
select owneruserid, sum(score) as OverallScore from yami_table_assign1 group by OwnerUserId order by OverallScore desc limit 10;

-- Task 2.3 The number of distinct users, who used the word “cloud” in one of their posts
select count (distinct owneruserid) from yami_table_assign1 where (lower(body) like '%cloud%' or lower(title) like '%cloud%' or lower(tags) like '%cloud%');
