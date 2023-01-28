# apptainer
misc apptainer def files for reproducible science

build the apptainers with 
`apptainer build your_apptainer.sif apptainer.def`

run the apptainer in shell mode with
`apptainer shell your_apptainer.sig`

for the vscode apptainer, add the following binding
`apptainer run -B /run/user/$(id -u):/run/user/$(id -u) ubuntu_vscode_*.sif code`
