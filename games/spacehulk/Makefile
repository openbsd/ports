# $OpenBSD: Makefile,v 1.19 2018/10/24 14:28:04 sthen Exp $

COMMENT=	total conversion of the Space Hulk board game

DISTNAME=	spacehulk-1.5-beta1
PKGNAME=	spacehulk-1.5beta1
REVISION =	9
CATEGORIES=	games x11

HOMEPAGE=	http://r.vinot.free.fr/spacehulk/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm c drm expat
WANTLIB += fontconfig freetype glapi jpeg lcms m mng png pthread
WANTLIB += ${COMPILER_LIBCXX} xcb xcb-dri2 xcb-glx z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${HOMEPAGE}

MODULES=	x11/qt3

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --with-qt-includes=${MODQT_INCDIR} \
		--with-qt-libraries=${MODQT_LIBDIR}
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

USE_GMAKE=	Yes

.include <bsd.port.mk>
