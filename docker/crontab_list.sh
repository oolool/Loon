# 店铺签到
0 0 * * * node /scripts/jd_shop_sign.js >> /scripts/logs/jd_shop_sign.log 2>&1

# 华硕-爱奇艺
1 0 22-28 2 * node /scripts/jd_asus_iqiyi.js >> /scripts/logs/jd_asus_iqiyi.log 2>&1

# 百变大咖秀
10 10,11 * * 2-5 node /scripts/jd_entertainment.js >> /scripts/logs/jd_entertainment.log 2>&1