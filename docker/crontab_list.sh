# 店铺签到
0 0 * * * node /scripts/jd_shop_sign.js >> /scripts/logs/jd_shop_sign.log 2>&1

# 华硕-爱奇艺
1 0 22-28 2 * node /scripts/jd_asus_iqiyi.js >> /scripts/logs/jd_asus_iqiyi.log 2>&1

# 百变大咖秀
10 10,11 * * * node /scripts/jd_entertainment.js >> /scripts/logs/jd_entertainment.log 2>&1

# 直播间红包雨
0 0,9,11,13,15,17,19,20,21,23 * * * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1
