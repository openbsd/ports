# $OpenBSD: Makefile,v 1.23 2019/07/12 20:46:24 sthen Exp $

COMMENT=	total conversion of the Space Hulk board game

DISTNAME=	spacehulk-1.5-beta1
PKGNAME=	spacehulk-1.5beta1
REVISION=	12
CATEGORIES=	games x11

HOMEPAGE=	http://r.vinot.free.fr/spacehulk/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL ICE SM X11 X11-xcb Xcursor Xdamage
WANTLIB += Xext Xfixes Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm
WANTLIB += c drm expat fontconfig freetype glapi jpeg lcms m mng
WANTLIB += png xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-sync
WANTLIB += xcb-xfixes xshmfence z

COMPILER=		base-clang ports-gcc base-gcc

MASTER_SITES=		${HOMEPAGE}

MODULES=		x11/qt3

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS= 	--with-qt-includes=${MODQT_INCDIR} \
			--with-qt-libraries=${MODQT_LIBDIR}
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

USE_GMAKE=		Yes

.include <bsd.port.mk>
