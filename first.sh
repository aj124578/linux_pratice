# first.sh
item="홍길동"
# echo $item
# echo ${item}
# echo "${item} 입니다"
# result=$(cat log.txt)
# echo $result
# ${} -> 변수를 사용할 때
# $() -> 리눅스 명령어를 사용할 때

item_length=$(expr length ${item})
# echo $item_length

# 조건문
# if[[ $item_length == 3 ]];
# then
#     echo "값이 3입니다."
# else
#     echo "값이 다릅니다."
# fi

# 파일이 있는지 확인 앞에 -e를 붙이면 됨
# if [[ -e log.txt ]];
# then
#     echo "파일이 있습니다"
# fi

# 폴더가 있는지 확인
# if [[ ! -d ./temp ]];
# then
#     echo "경로가 없습니다."
# else
#     echo "경로가 있습니다."
#     exit 0 # 정상종료 : 0 / 문제 : 1, -1
# fi
# echo "넘어옴"

# 출력 성공 조건문
ps -ef | grep myb*.jar
# pid만 나오게 하는 명령어
ex=$(pgrep -f myb*.jar)

if echo $ex > /dev/null
then
    echo "출력에 성공했습니다."
fi

# 반복문
# while [[ 조건 ]]
# do
#     echo "내용"
# done

# for (( ))
# do
#     echo "내용1"
# done

for ((i=1; i<5; i=i+1 ))
do
    echo "내용2"
done

temp="가 나 다"
for item in $temp
do
    echo $item
done