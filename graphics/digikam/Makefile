# $OpenBSD: Makefile,v 1.48 2015/05/05 17:00:17 sthen Exp $

COMMENT =		digital image kde application
CATEGORIES =		graphics x11 x11/kde
V =			0.9.6
DISTNAME =		digikam-$V
REVISION =		15
PKGSPEC =		digikam-<1

SHARED_LIBS +=		digikam              3.0      # .0.0
HOMEPAGE =		http://www.digikam.org/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=digikam/}
DISTFILES =		${DISTNAME}.tar.bz2

SHARED_ONLY =		Yes

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	x11/kde/libs3 \
		graphics/libgphoto2>=2.5 \
		graphics/libkipi \
		graphics/tiff \
		graphics/libkexiv2>=0.1.5,<4 \
		graphics/libkdcraw \
		graphics/lcms

MODULES =	devel/gettext \
		x11/kde

MODKDE_VERSION =	3.5.8
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
CONFIGURE_ARGS +=	${MODKDE_CONFIGURE_ARGS}

CONFIGURE_ARGS +=	--without-included-sqlite3

USE_GMAKE ?=		Yes
CONFIGURE_ENV +=	${MODKDE_CONFIGURE_ENV}
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include LDFLAGS=-L${LOCALBASE}/lib
MAKE_ENV =		${CONFIGURE_ENV}
SUBST_VARS +=		V

MAKE_FLAGS +=		${MODKDE_MAKE_FLAGS} LIBKEXIF_LIBS='-L${PREFIX}/lib -lkexif -lintl -liconv'
MAKE_FLAGS +=		LIBRESOLV=
 
# GPL
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += ${KDE}/DCOP ${KDE}/kabc ${KDE}/kdcraw ${KDE}/kdecore>=6
WANTLIB += ${KDE}/kdefx ${KDE}/kdeprint ${KDE}/kdesu ${KDE}/kdeui
WANTLIB += ${KDE}/kexiv2>=1 ${KDE}/khtml ${KDE}/kio ${KDE}/kipi
WANTLIB += ${KDE}/kjs ${KDE}/kparts ${KDE}/kresources ${KDE}/kutils
WANTLIB += ${KDE}/kwalletclient ${KDE}/vcard ${MODQT3_WANTLIB}
WANTLIB += GL ICE SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c
WANTLIB += drm exif exiv2 expat fam fontconfig freetype glapi gphoto2
WANTLIB += gphoto2_port idn jasper jpeg lcms ltdl m mng pcre pcreposix
WANTLIB += png pthread pthread-stubs sqlite3 stdc++ tiff util xcb
WANTLIB += xcb-dri2 xcb-glx z

.include <bsd.port.mk>
