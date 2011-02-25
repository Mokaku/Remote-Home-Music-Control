#!/usr/bin/zsh

cur_path=`pwd`
p_dir=$1

if test -z ${p_dir} 
then
ap_dir="NULL"
else
ap_dir=${p_dir}/
fi

today=`date +%Y%m%d`
p_list=playlist_${today}.m3u

## test ------------
## echo "test"
## echo ${ap_dir}
## echo ${cur_path}/${ap_dir}
## if test -d ${cur_path}/${ap_dir}
## then
## echo "Yes! this Dir is Correct"
## else
## echo "Nooooop! This Dir is Uncorrect"
## fi

## end of test -----


if test -d ${cur_path}/${ap_dir}
then
find ${cur_path}/${ap_dir} -name '*\.mp3' >> ${p_list}
echo "Yes! this Dir is Correct \n Now Add Music to "${p_list}
else
echo "Nooooop! This Dir is Uncorrect"
fi

## find ${cur_path}/ -name '*\.mp3' >>playlist_${today}.m3u


