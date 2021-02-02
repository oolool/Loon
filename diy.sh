# 开始替换京东压岁钱API
OLD_YEAR_URL="https:\/\/code.chiang.fun\/api\/v1\/jd\/year\/read\/\${randomCount}\/"
NEW_YEAR_URL="http:\/\/106.13.212.194\/jd\/code\/read?type=year\&count=\${randomCount}"
sed -i "s|$OLD_YEAR_URL|$NEW_YEAR_URL|" ${JD_DIR}/scripts/jd_newYearMoney.js