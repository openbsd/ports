# $OpenBSD: Makefile,v 1.22 2003/01/07 15:36:35 espie Exp $

COMMENT=		"X11 toolkit, libraries"
CATEGORIES=		x11 x11/kde
VERSION=		3.0.5a
DISTNAME=		kdelibs-${VERSION}
PKGNAME=		${DISTNAME}p0

LIB_DEPENDS= 	png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		audiofile::devel/libaudiofile \
		pcreposix,pcre::devel/pcre \
		xml2.6:libxml->=2.4.8:textproc/libxml \
		xslt.1.10:libxslt->=1.0.10:textproc/libxslt \
		bz2::archivers/bzip2 \
		artsflow.1.0,artsflow_idl.1.0,kmedia2_idl.1.0,mcop.1.0,qtmcop.1.0,soundserver_idl.1.0::x11/kde/arts3

SEPARATE_BUILD=	flavored
# To investigate
#CONFIGURE_ARGS=--enable-fast-malloc=full

#BUILD_DEPENDS=	:qt3-html-*:x11/qt3,-html

EXTRA_DIRECTORIES= \
	share/applnk/Editors \
	share/applnk/Edutainment \
	share/applnk/Games/Arcade \
	share/applnk/Games/Board \
	share/applnk/Games/Card \
	share/applnk/Games/TacticStrategy \
	share/applnk/Graphics \
	share/applnk/Office \
	share/applnk/Settings/Information \
	share/applnk/Settings/PowerControl \
	share/applnk/System/ScreenSavers \
	share/applnk/Toys \
	share/applnk/Utilities \
	share/apps/kdesktop/programs \
	share/apps/kicker/applets \
	share/apps/knewsticker \
	share/apps/konqueror \
	share/apps/kscreensaver \
	share/apps/kthememgr/Themes \
	share/apps/kwin/icewm-themes \
	share/apps/kworldclock/maps/depths \
	share/icons/hicolor/22x22/apps \
	share/icons/hicolor/32x32/apps \
	share/icons/hicolor/48x48/apps \
	share/icons/locolor/16x16/apps \
	share/icons/locolor/32x32/apps \
	share/locale \
	share/sounds \
	share/templates/.source \
	share/wallpapers

post-install:
.for i in ${EXTRA_DIRECTORIES}
	@${INSTALL_DATA_DIR} ${PREFIX}/$i
.endfor

.include <bsd.port.mk>
