# $OpenBSD: Makefile,v 1.2 2011/04/11 14:48:07 kili Exp $

COMMENT=	D-Bus profiler

DISTNAME=	bustle-0.2.3
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	http://willthompson.co.uk/bustle/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += dbus-1 drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gmp gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs util
WANTLIB += xcb xcb-render xcb-shm xml2 z

MASTER_SITES=	${HOMEPAGE}/releases/

MODULES=	lang/ghc \
		devel/gettext

MODGHC_BUILD=	cabal nort

BUILD_DEPENDS=	devel/hs-glade \
		devel/hs-parsec

LIB_DEPENDS=	devel/libglade2 \
		x11/dbus \
		devel/gmp

SUBST_VARS =	DISTNAME

# no need to install LICENSE in both share{,doc}/${FULLPKGNAME}/
pre-configure:
	perl -pi -e 's,^License-file.*,,' ${WRKSRC}/bustle.cabal

post-build:
	perl -pi -e 's,-g -O2,,' ${WRKSRC}/Makefile
	cd ${WRKBUILD} && ${MAKE_PROGRAM}

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bustle-dbus-monitor ${PREFIX}/bin

.include <bsd.port.mk>
