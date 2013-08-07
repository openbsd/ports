# $OpenBSD: Makefile,v 1.6 2013/08/07 15:37:08 naddy Exp $

CATEGORIES = base xenocara
COMMENT = Xenocara meta package for release
V = 0
DISTNAME = xc-meta-release-$V
DISTFILES =
PKGNAME = xc-meta-release-$V

LOCATION = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/components

SUBCOMPONENTS = \
app/cwm \
app/fvwm \
app/glxgears \
app/oclock \
app/ssh-askpass \
app/twm \
app/xbiff \
app/xedit \
app/xcalc \
app/xclipboard \
app/xclock \
app/xload \
app/xmag \
app/xterm \
app/xvidtune \
app/xman \
app/xlockmore \
distrib/notes \
driver/xf86-input-acecad \
driver/xf86-input-elographics \
driver/xf86-input-fpit \
driver/xf86-input-hyperpen \
driver/xf86-input-joystick \
driver/xf86-input-keyboard \
driver/xf86-input-mouse \
driver/xf86-input-mutouch \
driver/xf86-input-penmount \
driver/xf86-input-synaptics \
driver/xf86-input-usbtablet \
driver/xf86-input-vmmouse \
driver/xf86-input-void \
driver/xf86-input-ws \
driver/xf86-video-apm \
driver/xf86-video-ark \
driver/xf86-video-ati \
driver/xf86-video-chips \
driver/xf86-video-cirrus \
driver/xf86-video-dummy \
driver/xf86-video-glint \
driver/xf86-video-i128 \
driver/xf86-video-i740 \
driver/xf86-video-intel \
driver/xf86-video-mach64 \
driver/xf86-video-mga \
driver/xf86-video-neomagic \
driver/xf86-video-nv \
driver/xf86-video-openchrome \
driver/xf86-video-r128 \
driver/xf86-video-radeonold \
driver/xf86-video-rendition \
driver/xf86-video-s3 \
driver/xf86-video-s3virge \
driver/xf86-video-savage \
driver/xf86-video-siliconmotion \
driver/xf86-video-sis \
driver/xf86-video-sunffb \
driver/xf86-video-tdfx \
driver/xf86-video-trident \
driver/xf86-video-tseng \
driver/xf86-video-vesa \
driver/xf86-video-vmware \
driver/xf86-video-voodoo \
driver/xf86-video-wildcatfb \
driver/xf86-video-wsfb \
driver/xf86-video-wsudl \
xserver \
meta \
share/mk \
kdrive

BUILD_DEPENDS = ${SUBCOMPONENTS:S,^,base/xenocara/,}

PERMIT_PACKAGE_CDROM=   Yes

NO_BUILD = 

pre-install:
	cd ${XSRCDIR} && ${MAKE} fix-appd DESTDIR=
	/usr/libexec/makewhatis ${X11BASE}/man

do-install:
	cd ${XSRCDIR} && ${MAKE} dist RELEASEDIR=${LOCATION} DESTDIR=/

post-install:

.include <bsd.port.mk>
