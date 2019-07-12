# $OpenBSD: Makefile,v 1.22 2019/07/12 20:46:23 sthen Exp $

COMMENT=	go client and fully featured sgf editor

DISTNAME=	qgo-1.5.4
REVISION =	8
CATEGORIES=	games

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm c drm expat
WANTLIB += fontconfig freetype glapi jpeg lcms m mng png pthread
WANTLIB += ${COMPILER_LIBCXX} xcb xcb-dri2 xcb-glx z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	x11/qt3

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qgo/}

WRKDIST=	${WRKDIR}/${DISTNAME:S/-r1//}

USE_GMAKE=Yes

NO_TEST= Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include \
		 --with-extra-libs=${LOCALBASE}/lib \
		 ${MODQT_CONFIGURE_ARGS}

.include <bsd.port.mk>
