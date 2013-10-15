# $OpenBSD: Makefile,v 1.15 2013/10/15 14:55:16 naddy Exp $

COMMENT=	go client and fully featured sgf editor

DISTNAME=	qgo-1.5.4
REVISION =	4
CATEGORIES=	games

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB = GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xt Xxf86vm c drm expat fontconfig
WANTLIB += freetype jpeg lcms m mng png pthread pthread-stubs
WANTLIB += stdc++ xcb z

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
