# apptainer
misc apptainer def files for reproducible science

build the apptainers with 
`apptainer build your_apptainer.sif apptainer.def`

run the apptainer in shell mode with
`apptainer shell your_apptainer.sig`

for the vscode apptainer, add the following binding
`apptainer run -B /run/user/$(id -u):/run/user/$(id -u) ubuntu_vscode_*.sif code`

For deeplabcut apptainer
`apptainer build --nvccli deeplabcut-2.3.5.sif docker://deeplabcut/deeplabcut:2.3.5-jupyter-cuda11.7.1-cudnn8-runtime-ubuntu20.04-latest`

For ruby
`apptainer shell ruby.sif`
`cd ~/Documents/website/Index`
`bundle exec jekyll serve`


When running out of cache in /tmp
`sudo mount -o remount,size=50G /tmp/ `