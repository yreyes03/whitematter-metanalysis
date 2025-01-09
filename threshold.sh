



threshold=0.5

data_dir="/home/danielareyes/Documents/analysis/1_avg/app/cortexmap/cortexmap/func"
mask_dir="/home/danielareyes/Documents/analysis/1_avg/app/cortexmap/cortexmap/mask"
out_dir="/home/danielareyes/Documents/analysis/1_avg/app/cortexmap/cortexmap/func"
func_files=`ls ${data_dir}` 
## echo `` for executing command & capture results

# echo ${func_files}

for func in ${func_files}
do

    # echo ${func}
    # func_name=`echo ${func%%.func.gii}`  ## assign string before %% to var name before %%
    # echo ${func_name}
    # break

    # # threshold atlas --> binary maps
    tmp_command="wb_command -metric-math '(x>${threshold})' ${mask_dir}/${func} -var 'x' ${data_dir}/${func}"
    eval `echo $tmp_command`
    # #wb_command -metric-math "(x>${threshold})" ./${label_name}.mask.shape.gii -var 'x' ./${label_name}.probability.func.gii

    # # mask atlas using maps from last step
    tmp_cmmand="wb_command -metric-mask ${data_dir}/${func} ${mask_dir}/${func} ${out_dir}/${func}"
    eval `echo $tmp_cmmand`

done
