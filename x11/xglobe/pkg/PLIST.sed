@comment $OpenBSD: PLIST.sed,v 1.1 2000/05/22 14:01:10 espie Exp $
bin/xglobe
bin/getcloudmap
!%%no_map%%
lib/xglobe/xglobe-markers
share/doc/xglobe/README
share/doc/xglobe/README.maps
@dirrm share/doc/xglobe
@dirrm lib/xglobe
@exec echo "Install ImageMagick if you want to use the getcloudmap script"
