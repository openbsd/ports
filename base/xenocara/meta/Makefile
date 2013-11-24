# $OpenBSD: Makefile,v 1.6 2013/11/24 16:56:01 espie Exp $

CATEGORIES = base xenocara
COMMENT = Xenocara meta package for building
V = 4
DISTNAME = xenocara-meta-$V
DISTFILES =

SUBCOMPONENTS = \
proto/bigreqsproto \
proto/compositeproto \
proto/damageproto \
proto/dmxproto \
proto/dri2proto \
proto/fixesproto \
proto/fontcacheproto \
proto/fontsproto \
proto/glproto \
proto/inputproto \
proto/kbproto \
proto/pmproto \
proto/randrproto \
proto/recordproto \
proto/renderproto \
proto/resourceproto \
proto/scrnsaverproto \
proto/videoproto \
proto/x11proto \
proto/xcb-proto \
proto/xcmiscproto \
proto/xextproto \
proto/xf86bigfontproto \
proto/xf86dgaproto \
proto/xf86driproto \
proto/xf86miscproto \
proto/xf86vidmodeproto \
proto/xineramaproto \
lib/fontconfig \
lib/freetype \
lib/libEGL \
lib/libFS \
lib/libGL \
lib/libGLU \
lib/libGLw \
lib/libICE \
lib/libSM \
lib/libX11 \
lib/libXRes \
lib/libXScrnSaver \
lib/libXau \
lib/libXaw \
lib/libXcomposite \
lib/libXcursor \
lib/libXdamage \
lib/libXdmcp \
lib/libXext \
lib/libXfixes \
lib/libXfont \
lib/libXfontcache \
lib/libXft \
lib/libXi \
lib/libXinerama \
lib/libXmu \
lib/libXpm \
lib/libXrandr \
lib/libXrender \
lib/libXt \
lib/libXtst \
lib/libXv \
lib/libXvMC \
lib/libXxf86dga \
lib/libXxf86misc \
lib/libXxf86vm \
lib/libdmx \
lib/libdrm \
lib/libfontenc \
lib/libpciaccess \
lib/libpthread-stubs \
lib/libxcb \
lib/libxkbfile \
lib/libxkbui \
lib/libxtrans \
lib/pixman \
lib/xcb-util \
app/appres \
app/bdftopcf \
app/beforelight \
app/bitmap \
app/editres \
app/fonttosfnt \
app/fslsfonts \
app/fstobdf \
app/glxinfo \
app/iceauth \
app/ico \
app/listres \
app/luit \
app/mkfontdir \
app/mkfontscale \
app/rgb \
app/scripts \
app/sessreg \
app/setxkbmap \
app/showfont \
app/smproxy \
app/video \
app/viewres \
app/x11perf \
app/xauth \
app/xbacklight \
app/xcmsdb \
app/xcompmgr \
app/xconsole \
app/xdm \
app/xdpyinfo \
app/xdriinfo \
app/xev \
app/xeyes \
app/xf86dga \
app/xfd \
app/xfontsel \
app/xfs \
app/xfsinfo \
app/xfwp \
app/xgamma \
app/xgc \
app/xhost \
app/xidle \
app/xinit \
app/xinput \
app/xkbcomp \
app/xkbevd \
app/xkbprint \
app/xkbutils \
app/xkill \
app/xlogo \
app/xlsatoms \
app/xlsclients \
app/xlsfonts \
app/xmessage \
app/xmodmap \
app/xmore \
app/xpr \
app/xprop \
app/xrandr \
app/xrdb \
app/xrefresh \
app/xset \
app/xsetroot \
app/xsm \
app/xstdcmap \
app/xsystrace \
app/xtsscale \
app/xvctl \
app/xvinfo \
app/xwd \
app/xwininfo \
app/xwud \
data/bitmaps \
data/xkeyboard-config \
font/adobe-100dpi \
font/adobe-75dpi \
font/adobe-utopia-100dpi \
font/adobe-utopia-75dpi \
font/adobe-utopia-type1 \
font/alias \
font/arabic-misc \
font/bh-100dpi \
font/bh-75dpi \
font/bh-lucidatypewriter-100dpi \
font/bh-lucidatypewriter-75dpi \
font/bh-ttf \
font/bh-type1 \
font/bitstream-100dpi \
font/bitstream-75dpi \
font/bitstream-type1 \
font/cronyx-cyrillic \
font/cursor-misc \
font/daewoo-misc \
font/dec-misc \
font/dejavu-ttf \
font/encodings \
font/ibm-type1 \
font/isas-misc \
font/jis-misc \
font/micro-misc \
font/misc-cyrillic \
font/misc-ethiopic \
font/misc-meltho \
font/misc-misc \
font/mutt-misc \
font/schumacher-misc \
font/screen-cyrillic \
font/sony-misc \
font/sun-misc \
font/util \
font/winitzki-cyrillic \
font/xfree86-type1 \
util/gccmakedep \
util/macros \
util/makedepend

BUILD_DEPENDS = ${SUBCOMPONENTS:S,^,base/xenocara/,}

RUN_DEPENDS += base/bootstrap

PERMIT_PACKAGE_CDROM=   Yes

NO_BUILD = 

do-install:
	mkdir -p ${PREFIX}/libdata/base
.for x in ${SUBCOMPONENTS:S/\//./g:C/-([0-9])/_\1/g}
	@echo $x `cat /var/db/components/xc-$x` >>${PREFIX}/libdata/base/${FULLPKGNAME}.gen
.endfor

.include <bsd.port.mk>
