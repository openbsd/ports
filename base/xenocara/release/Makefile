# $OpenBSD: Makefile,v 1.1.1.1 2012/11/01 09:58:06 espie Exp $

CATEGORIES = xenocara
COMMENT = Xenocara meta package for release
V = 0
DISTNAME = xc-meta-release-$V
DISTFILES =
PKGNAME = xc-meta-release-$V

LOCATION = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/components

BUILD_DEPENDS = \
xenocara/app/cwm \
xenocara/app/fvwm \
xenocara/app/glxgears \
xenocara/app/oclock \
xenocara/app/ssh-askpass \
xenocara/app/twm \
xenocara/app/xbiff \
xenocara/app/xedit \
xenocara/app/xcalc \
xenocara/app/xclipboard \
xenocara/app/xclock \
xenocara/app/xload \
xenocara/app/xmag \
xenocara/app/xterm \
xenocara/app/xvidtune \
xenocara/app/xman \
xenocara/app/xmessage \
xenocara/app/xlockmore \
xenocara/distrib/notes \
xenocara/driver/xf86-input-acecad \
xenocara/driver/xf86-input-elographics \
xenocara/driver/xf86-input-fpit \
xenocara/driver/xf86-input-hyperpen \
xenocara/driver/xf86-input-joystick \
xenocara/driver/xf86-input-keyboard \
xenocara/driver/xf86-input-mouse \
xenocara/driver/xf86-input-mutouch \
xenocara/driver/xf86-input-penmount \
xenocara/driver/xf86-input-synaptics \
xenocara/driver/xf86-input-usbtablet \
xenocara/driver/xf86-input-vmmouse \
xenocara/driver/xf86-input-void \
xenocara/driver/xf86-input-ws \
xenocara/driver/xf86-video-apm \
xenocara/driver/xf86-video-ark \
xenocara/driver/xf86-video-ati \
xenocara/driver/xf86-video-chips \
xenocara/driver/xf86-video-cirrus \
xenocara/driver/xf86-video-dummy \
xenocara/driver/xf86-video-glint \
xenocara/driver/xf86-video-i128 \
xenocara/driver/xf86-video-i740 \
xenocara/driver/xf86-video-intel \
xenocara/driver/xf86-video-mach64 \
xenocara/driver/xf86-video-mga \
xenocara/driver/xf86-video-neomagic \
xenocara/driver/xf86-video-nv \
xenocara/driver/xf86-video-openchrome \
xenocara/driver/xf86-video-r128 \
xenocara/driver/xf86-video-radeonold \
xenocara/driver/xf86-video-rendition \
xenocara/driver/xf86-video-s3 \
xenocara/driver/xf86-video-s3virge \
xenocara/driver/xf86-video-savage \
xenocara/driver/xf86-video-siliconmotion \
xenocara/driver/xf86-video-sis \
xenocara/driver/xf86-video-sunffb \
xenocara/driver/xf86-video-tdfx \
xenocara/driver/xf86-video-trident \
xenocara/driver/xf86-video-tseng \
xenocara/driver/xf86-video-vesa \
xenocara/driver/xf86-video-vmware \
xenocara/driver/xf86-video-voodoo \
xenocara/driver/xf86-video-wildcatfb \
xenocara/driver/xf86-video-wsfb \
xenocara/driver/xf86-video-wsudl \
xenocara/xserver \
xenocara/meta \
xenocara/share/mk \
xenocara/share/pciids

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_BUILD = 

pre-install:
	cd ${XSRCDIR} && ${MAKE} after-install DESTDIR=

do-install:
	cd ${XSRCDIR} && ${MAKE} dist RELEASEDIR=${LOCATION} DESTDIR=/

.include <bsd.port.mk>
