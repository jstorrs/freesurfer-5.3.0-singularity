all: freesurfer-Linux-centos6_x86_64-stable-pub-v5.3.0-HCP.sif freesurfer-Linux-centos6_x86_64-stable-pub-v5.3.0.sif
.PHONY: all

%.sif : src/%.def
	singularity build --force --fakeroot $@ $<

freesurfer-Linux-centos6_x86_64-stable-pub-v5.3.0-HCP.sif : centos6.sif
freesurfer-Linux-centos6_x86_64-stable-pub-v5.3.0.sif : centos6.sif
