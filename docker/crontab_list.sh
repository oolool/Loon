# 京东赚京豆
0 8,10 * * * node /scripts/jd_xcx_zjd.js >> /scripts/logs/jd_xcx_zjd.log 2>&1

# 店铺签到
0 0 * * * node /scripts/jd_shop_sign.js >> /scripts/logs/jd_shop_sign.log 2>&1