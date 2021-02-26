# 店铺签到
0 0 * * * node /scripts/jd_shop_sign.js >> /scripts/logs/jd_shop_sign.log 2>&1

# 华硕-爱奇艺
1 0 22-28 2 * node /scripts/jd_asus_iqiyi.js >> /scripts/logs/jd_asus_iqiyi.log 2>&1

# 百变大咖秀
10 10,11 * * * node /scripts/jd_entertainment.js >> /scripts/logs/jd_entertainment.log 2>&1

# 直播间红包雨
# 0 0,9,11,13,15,17,19,20,21,23 * * * node /scripts/jd_live_redrain_nian.js >> /scripts/logs/jd_live_redrain_nian.log 2>&1

# 女装盲盒
0 8 1-8/1,27,28 2,3 * node /scripts/jd_nzmh.js >> /scripts/logs/jd_nzmh.log 2>&1

# 超市摇一摇
3 20 * * * node /scripts/jd_shake.js >> /scripts/logs/jd_shake.log 2>&1