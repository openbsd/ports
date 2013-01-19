# $OpenBSD: Makefile,v 1.36 2013/01/19 11:26:02 zhuk Exp $

COMMENT =		digital image kde application
CATEGORIES =		graphics x11 x11/kde
V =			0.9.6
DISTNAME =		digikam-$V
REVISION =		6
SHARED_LIBS +=		digikam              3.0      # .0.0
HOMEPAGE =		http://www.digikam.org/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=digikam/}
DISTFILES =		${DISTNAME}.tar.bz2

SHARED_ONLY =		Yes

RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS +=	x11/kde/libs3 \
		graphics/libgphoto2>=2.5 \
		graphics/libkipi \
		graphics/tiff \
		graphics/libkexiv2>=0.1.5 \
		graphics/libkdcraw \
		graphics/lcms

WANTLIB =	util m c ICE Xrender SM pthread z stdc++ expat \
		Xext X11 jpeg png art_lgpl_2 exif idn \
		exiv2 jasper pcre pcreposix ltdl \
		xcb lib/qt3/qt-mt>=3.33 kdecore>=6 \
		kwalletclient DCOP kparts kdeui kdesu kio kdefx \
		kdeprint kutils kabc vcard kresources khtml kjs \
		gphoto2 gphoto2_port kipi tiff kexiv2>=1 kdcraw \
		lcms
WANTLIB += GL Xcursor Xdamage Xfixes Xft Xi Xinerama Xmu Xrandr
WANTLIB += Xt Xxf86vm drm fontconfig freetype mng fam

MODULES =	devel/gettext \
		x11/kde

MODKDE_VERSION =	3.5.8
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
CONFIGURE_ARGS +=	${MODKDE_CONFIGURE_ARGS}

CONFIGURE_ARGS +=	--without-included-sqlite3
WANTLIB +=		sqlite3

USE_GMAKE ?=		Yes
USE_GROFF =		Yes
CONFIGURE_ENV +=	${MODKDE_CONFIGURE_ENV}
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include LDFLAGS=-L${LOCALBASE}/lib
MAKE_ENV =		${CONFIGURE_ENV}
SUBST_VARS +=		V

MAKE_FLAGS +=		${MODKDE_MAKE_FLAGS} LIBKEXIF_LIBS='-L${PREFIX}/lib -lkexif -lintl -liconv'
MAKE_FLAGS +=		LIBRESOLV=
 
# GPL
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes

.include <bsd.port.mk>
