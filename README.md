general_scripts
===============

This repo contains general-purpose and miscellaneous scripts being added as their need justifies the time to write them.

Scripts for paleo tools are now moved to the Paleo_tools repo.

Please note that figtree and ViPhy open java files housed in a ~/programs folder and that the FigTree folder was renamed in a simpler way than the default after being freshly unzipped. Both programs are available at:

* [FigTree](http://tree.bio.ed.ac.uk/software/figtree/)
* [ViPhy](http://www.gris.tu-darmstadt.de/research/vissearch/projects/ViPhy/)

The `figtree` bash script is a modified version from the original provided with the download file and `ViPhy` was not provided with the original install but created by me.

TNT can be made exectable itsel with the following code (no script needed at all):
```{bash}
sudo chmod +x tnt
sudo cp tnt /usr/bin
```

To verify that all of these scripts are executable try:

```{bash}
whereis script_name # (e.g. ViPhy, tnt, figtree)
```
