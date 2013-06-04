# $OpenBSD: Makefile,v 1.12 2013/06/04 18:41:44 naddy Exp $

COMMENT=	total conversion of the Space Hulk board game

DISTNAME=	spacehulk-1.5-beta1
PKGNAME=	spacehulk-1.5beta1
REVISION =	4
CATEGORIES=	games x11

HOMEPAGE=	http://r.vinot.free.fr/spacehulk/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		m c z stdc++ pthread
WANTLIB += GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xt Xxf86vm drm expat freetype fontconfig jpeg
WANTLIB += lcms mng png pthread-stubs xcb

MASTER_SITES=	${HOMEPAGE}

MODULES=	x11/qt3

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --with-qt-includes=${MODQT_INCDIR} \
		--with-qt-libraries=${MODQT_LIBDIR}
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

USE_GMAKE=	Yes

.include <bsd.port.mk>
