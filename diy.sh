SCRIPTS_DIR="$JD_DIR/scripts"
## 净化脚本内置助力
function clearCode {
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

function updateCodeUrl {
    sed -i "s|http://jd.turinglabs.net/api/v2/jd/farm/read|http://106.13.212.194/jd/code/read/farm|" "$SCRIPTS_DIR/jd_fruit.js"
    sed -i "s|http://jd.turinglabs.net/api/v2/jd/ddfactory/read|http://106.13.212.194/jd/code/read/ddfactory|" "$SCRIPTS_DIR/jd_jdfactory.js"
    sed -i "s|http://jd.turinglabs.net/api/v2/jd/jxfactory/read|http://106.13.212.194/jd/code/read/jxfactory|" "$SCRIPTS_DIR/jd_dreamFactory.js"
    sed -i "s|http://jd.turinglabs.net/api/v2/jd/pet/read|http://106.13.212.194/jd/code/read/pet|" "$SCRIPTS_DIR/jd_pet.js"
    sed -i "s|http://jd.turinglabs.net/api/v2/jd/sgmh/read|http://106.13.212.194/jd/code/read/sgmh|" "$SCRIPTS_DIR/jd_sgmh.js"
    sed -i "s|http://jd.turinglabs.net/api/v2/jd/bean/read|http://106.13.212.194/jd/code/read/bean|" "$SCRIPTS_DIR/jd_plantBean.js"
    sed -i "s|https://code.chiang.fun/api/v1/jd/jdcrazyjoy/read|http://106.13.212.194/jd/code/read/crazyJoy|" "$SCRIPTS_DIR/jd_crazy_joy.js"
    echo "助力池链接替换完成!"
}

clearCode
updateCodeUrl