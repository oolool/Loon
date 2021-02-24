# 开始替换京东压岁钱API
# OLD_YEAR_URL="https:\/\/code.chiang.fun\/api\/v1\/jd\/year\/read\/\${randomCount}\/"
# NEW_YEAR_URL="http:\/\/106.13.212.194\/jd\/code\/read?type=year\&count=\${randomCount}"
# sed -i "s|$OLD_YEAR_URL|$NEW_YEAR_URL|" ${JD_DIR}/scripts/jd_newYearMoney.js

#################  净化脚本内置助力 #################
function clearCode {
    SCRIPTS_DIR="$JD_DIR/scripts"
    for file in $SCRIPTS_DIR/*.js; do
        LINES=($(sed -n '/将采纳本脚本自带的助力码/=' $file))
        if [ -n "$LINES" ] ; then
        for i in `seq  ${#LINES[*]} -1 1`; do
            LINE=${LINES[i-1]}
            LAST_LINE=($(sed -n "$[$LINE+1],$[$LINE+10]{/}/=}" $file))
            sed -i "$LINE,$[${LAST_LINE[0]}-1]d" $file
            AU_URL="https://gitee.com/shylocks/updateTeam"
            sed -i "s|https://gitee.com/shylocks/updateTeam|https://www.baidu.com|" $file
            sed -i "s|https://gitee.com/lxk0301/updateTeam|https://www.baidu.com|" $file
        done
        fi
    done
    echo "净化脚本,人人有责"
}

clearCode