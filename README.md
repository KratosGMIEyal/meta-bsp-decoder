## GitHUb fetch project
```
repo init -u git@github.com:KratosGMIEyal/decoder_yocto_manifest.git -b master -m decoder.xml

repo sync
```

## Setup & build the project 
```bash
. modular-tools setup

## for PCB
. modular-tools build_image_pcb
```

## use modular tools
```bash
. modular-tools help  #view all options and work accordinglly
```
