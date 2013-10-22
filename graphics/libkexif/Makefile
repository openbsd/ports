# $OpenBSD: Makefile,v 1.30 2013/10/22 11:34:18 zhuk Exp $

COMMENT =		kde interface to exif
CATEGORIES =		graphics devel x11 x11/kde
DISTNAME =		libkexif-0.2.5
REVISION =		7
SHARED_LIBS =		kexif	2.2
EXTRACT_SUFX =		.tar.bz2
HOMEPAGE =		http://extragear.kde.org/apps/kipi/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=kipi/}

SHARED_ONLY =	Yes

LIB_DEPENDS =	x11/kde/libs3 \
		graphics/libexif

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 drm exif expat
WANTLIB += fontconfig freetype idn jpeg lcms m mng png stdc++ util
WANTLIB += xcb z 
WANTLIB += lib/qt3/qt-mt>=3.33
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=6 ${KDE}/kdeui ${KDE}/kdefx

MODULES =	devel/gettext \
		x11/kde

MODKDE_VERSION =	3.5
LIBTOOL_FLAGS +=	--tag=disable-static
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.59
CONFIGURE_ARGS +=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE =		Yes
CONFIGURE_ENV +=	${MODKDE_CONFIGURE_ENV}
MAKE_ENV =		${CONFIGURE_ENV}

MAKE_FLAGS +=		${MODKDE_MAKE_FLAGS} LIB_TIFF='-ltiff -lz'
MAKE_FLAGS +=		LIBRESOLV=

# GPL
PERMIT_PACKAGE_CDROM =		Yes

.include <bsd.port.mk>
