# apptainer
misc apptainer def files for reproducible science

build the apptainers with 
`apptainer build your_apptainer.sif apptainer.def`

run the apptainer in shell mode with
`apptainer shell your_apptainer.sig`

for the vscode apptainer, add the following binding
`apptainer run -B /run/user/$(id -u):/run/user/$(id -u) ubuntu_vscode_*.sif code`

For deeplabcut apptainer
`apptainer build --fakeroot --nvccli deeplabcut-2.2.1.1.sif docker://deeplabcut/deeplabcut:2.2.0.6-gui-cuda11.7.0-runtime-ubuntu20.04`


When running out of cache in /tmp
`sudo mount -o remount,size=50G /tmp/ `