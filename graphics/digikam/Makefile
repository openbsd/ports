# $OpenBSD: Makefile,v 1.40 2013/06/27 11:31:51 zhuk Exp $

COMMENT =		digital image kde application
CATEGORIES =		graphics x11 x11/kde
V =			0.9.6
DISTNAME =		digikam-$V
REVISION =		8
SHARED_LIBS +=		digikam              3.0      # .0.0
HOMEPAGE =		http://www.digikam.org/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=digikam/}
DISTFILES =		${DISTNAME}.tar.bz2

SHARED_ONLY =		Yes

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	x11/kde/libs3 \
		graphics/libgphoto2>=2.5 \
		graphics/libkipi \
		graphics/tiff \
		graphics/libkexiv2>=0.1.5 \
		graphics/libkdcraw \
		graphics/lcms

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xt Xxf86vm Xrender art_lgpl_2 c drm fam
WANTLIB += fontconfig freetype exif expat exiv2 gphoto2 gphoto2_port
WANTLIB += idn jasper jpeg lcms ltdl m mng pcre pcreposix png pthread
WANTLIB += stdc++ tiff util xcb z
WANTLIB += lib/qt3/qt-mt>=3.33
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=6 ${KDE}/kparts ${KDE}/kdeui
WANTLIB += ${KDE}/kdesu ${KDE}/kio ${KDE}/kdefx kdcraw
WANTLIB += ${KDE}/kdeprint kexiv2>=1 kipi ${KDE}/kutils
WANTLIB += ${KDE}/kabc ${KDE}/kresources ${KDE}/khtml ${KDE}/kjs
WANTLIB += ${KDE}/kwalletclient ${KDE}/vcard

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
PERMIT_PACKAGE_CDROM =		Yes

.include <bsd.port.mk>
