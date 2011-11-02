# $OpenBSD: Makefile,v 1.24 2011/11/02 09:57:22 jasper Exp $

COMMENT =		kde interface to exif
CATEGORIES =		graphics devel x11 x11/kde
DISTNAME =		libkexif-0.2.5
REVISION =		3
SHARED_LIBS =		kexif	2.2
EXTRACT_SUFX =		.tar.bz2
HOMEPAGE =		http://extragear.kde.org/apps/kipi/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=kipi/}

SHARED_ONLY =	Yes

LIB_DEPENDS +=	x11/kde/libs3 \
		graphics/libexif

WANTLIB =	ICE Xrender SM Xext X11 util m z \
		jpeg png art_lgpl_2 idn \
		xcb lib/qt3/qt-mt>=3.33 \
		kdecore>=6 DCOP kdeui kdefx exif
WANTLIB += GL Xcursor Xdamage Xfixes Xft Xi Xinerama Xmu Xrandr
WANTLIB += Xt Xxf86vm drm expat fontconfig freetype lcms mng stdc++

MODULES =	devel/gettext \
		x11/kde

MODKDE_VERSION =	3.5
USE_LIBTOOL =		Yes
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
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes

.include <bsd.port.mk>
