FN=S1_21_func-smallFOV_ax_0.8mm_MB2_TE31NoSat_func-smallFOV_ax_0.8mm_MB2_TE31NoSat_20240313092956_21

fslreorient2std $FN\.nii.gz $FN\_reo.nii.gz
fslmaths $FN\_reo.nii.gz -Tmean $FN\_reoMean.nii.gz 
3dvolreg -Fourier -twopass -base $FN\_reoMean.nii.gz -zpad 4 -prefix $FN\_mc.nii.gz -1Dfile $FN\.1D -1Dmatrix_save $FN\_matmc.1D $FN\.nii.gz 
fslmaths $FN\_mc.nii.gz -Tmean $FN\_mcMean.nii.gz
fslmaths $FN\_mc.nii.gz -Tstd $FN\_mcStd.nii.gz
fslmaths $FN\_mcMean.nii.gz -div $FN\_mcStd.nii.gz $FN\_mctSNR.nii.gz



FN=S1_20_func-smallFOV_ax_0.8mm_MB2_TE22_func-smallFOV_ax_0.8mm_MB2_TE22_20240313092956_20

fslreorient2std $FN\.nii.gz $FN\_reo.nii.gz
fslmaths $FN\_reo.nii.gz -Tmean $FN\_reoMean.nii.gz 
3dvolreg -Fourier -twopass -base $FN\_reoMean.nii.gz -zpad 4 -prefix $FN\_mc.nii.gz -1Dfile $FN\.1D -1Dmatrix_save $FN\_matmc.1D $FN\.nii.gz 
fslmaths $FN\_mc.nii.gz -Tmean $FN\_mcMean.nii.gz
fslmaths $FN\_mc.nii.gz -Tstd $FN\_mcStd.nii.gz
fslmaths $FN\_mcMean.nii.gz -div $FN\_mcStd.nii.gz $FN\_mctSNR.nii.gz
