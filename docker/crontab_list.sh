# 京东赚京豆
0 8,10 * * * node /scripts/jd_xcx_zjd.js >> /scripts/logs/jd_xcx_zjd.log 2>&1

# 店铺签到
0 0 * * * node /scripts/jd_shop_sign.js >> /scripts/logs/jd_shop_sign.log 2>&1

# 年货直播红包雨
0 0,9,11,13,15,17,19,20,21,23 * * * node /scripts/jd_live_redrain_nian.js >> /scripts/logs/jd_live_redrain_nian.log 2>&1

# 华硕-爱奇艺
1 0 22-28 2 * node /scripts/jd_asus_iqiyi.js >> /scripts/logs/jd_asus_iqiyi.log 2>&1