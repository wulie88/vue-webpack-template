#! bin/bash
export LANG=zh_CN.GB2312

function update() {
	deploy_path=$1
	yes | cp -fr * $deploy_path
}

branch=$1

echo "work on $(pwd)"
lastCommit=`git log -1 | grep commit |  awk '{print $2}'`
lastOnelineCommit=`git log -1  --oneline`
echo $lastCommit


folder="{{ name }}"
echo "[DEV] deploy $folder ..."
pwd
source="dist/*"
target="/data0/wwwroot/pink-activities/app/$folder/"
rm -rf $target
mkdir -p $target
echo "cp -fr $source $target"
yes | cp -fr $source $target

curl https://oapi.dingtalk.com/robot/send?access_token=9682e344afcbc04d3e504f59eeb5ae5bdf35ea8120f17b3d0c6793365323ff3f -H 'Content-Type: application/json' \
		-d "
{
	\"msgtype\": \"link\", 
	\"link\": {
			\"text\":\"[DEV] deploy $lastOnelineCommit\", 
			\"title\": \"$folder完成部署\", 
			\"picUrl\": \"\", 
			\"messageUrl\": \"http://git.ffrj.net/H5/{{ name }}/builds\"
		}
}"
