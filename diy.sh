## 净化脚本内置助力
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

function updateCodeUrl {
    sed -i "s|http://jd.turinglabs.net/api/v2/jd/farm/read|http://106.13.212.194/jd/code/read/farm|"
    sed -i "s|http://jd.turinglabs.net/api/v2/jd/ddfactory/read|http://106.13.212.194/jd/code/read/ddfactory|"
    sed -i "s|http://jd.turinglabs.net/api/v2/jd/jxfactory/read|http://106.13.212.194/jd/code/read/jxfactory|"
    sed -i "s|http://jd.turinglabs.net/api/v2/jd/pet/read|http://106.13.212.194/jd/code/read/pet|"
    sed -i "s|http://jd.turinglabs.net/api/v2/jd/sgmh/read|http://106.13.212.194/jd/code/read/sgmh|"
    echo "助力池链接替换完成!"
}

clearCode
updateCodeUrl