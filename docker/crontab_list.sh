# 宝洁美发屋
1 8,9 14-31/1 1 * node /scripts/jd_bj.js >> /scripts/logs/jd_bj.log 2>&1

# 超级直播间红包雨
30,31 20-23/1 * 1 * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1

# 直播间红包雨
0,1 19-21/1 * * * node /scripts/jd_live_redrain2.js >> /scripts/logs/jd_live_redrain2.log 2>&1

# 半点红包雨
30,31 12-23/1 * * * node /scripts/jd_live_redrain_half.js >> /scripts/logs/jd_live_redrain_half.log 2>&1

# 半点红包雨
30,31 12-23/1 * * * node /scripts/jd_live_redrain_half_2.js >> /scripts/logs/jd_live_redrain_half_2.log 2>&1

# 年货直播红包雨
0 0,9,11,13,15,17,19,20,21,23 3,5,20-30/1 1,2 * node /scripts/jd_live_redrain_nian.js >> /scripts/logs/jd_live_redrain_nian.log 2>&1

# 官方号直播红包雨
0 0,9,11,13,15,17,19,20,21,22,23 * * * node /scripts/jd_live_redrain_offical.js >> /scripts/logs/jd_live_redrain_offical.log 2>&1

# 超级直播间任务赢京豆
40 21 * * * node /scripts/jd_super.js >> /scripts/logs/jd_super.log 2>&1

# 海产新年抽奖
10 7 * * * node /scripts/jd_sx.js >> /scripts/logs/jd_sx.log 2>&1

# 京年团圆pick
5 0 19,20 1 * node /scripts/jd_vote.js >> /scripts/logs/jd_vote.log 2>&1

# 京东粉丝专享
10 0 * * * node /scripts/jd_wechat_sign.js >> /scripts/logs/jd_wechat_sign.log 2>&1

# 京东赚京豆
0 8,10 * * * node /scripts/jd_xcx_zjd.js >> /scripts/logs/jd_xcx_zjd.log 2>&1
