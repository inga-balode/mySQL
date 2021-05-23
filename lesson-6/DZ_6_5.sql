SELECT 
id,
(SELECT COUNT(*) FROM `like` WHERE `like`.user_id = `user`.id) +
(SELECT COUNT(*) FROM `community_user` WHERE `community_user`.user_id = `user`.id) +
(SELECT COUNT(*) FROM `friend_request` WHERE `friend_request`.from_user_id = `user`.id) +
(SELECT COUNT(*) FROM `friend_request` WHERE `friend_request`.to_user_id = `user`.id) +
(SELECT COUNT(*) FROM `message` WHERE `message`.from_user_id = `user`.id) +
(SELECT COUNT(*) FROM `message` WHERE `message`.to_user_id = `user`.id) +
(SELECT COUNT(*) FROM `post` WHERE `post`.user_id = `user`.id) as coef
FROM `user`
ORDER BY coef DESC