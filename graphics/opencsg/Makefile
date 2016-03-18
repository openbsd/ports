# $OpenBSD: Makefile,v 1.6 2016/03/18 23:12:17 naddy Exp $

COMMENT =		constructive solid geometry rendering library

V =			1.3.2
DISTNAME =		OpenCSG-${V}
PKGNAME =		opencsg-${V}

SHARED_LIBS =		opencsg		0.0

CATEGORIES =		graphics

HOMEPAGE =		http://www.opencsg.org/

# GPLv2 with CGAL exception
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		GL GLEW lib/qt4/QtGui m stdc++ pthread
WANTLIB +=		ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

MODULES =		x11/qt4
CONFIGURE_STYLE =	qmake
SEPARATE_BUILD =	No

LIB_DEPENDS =		graphics/glew

MASTER_SITES =		http://www.opencsg.org/

WRKSRC =		${WRKDIST}/src

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src.pro

do-install:
	${INSTALL_DATA} ${WRKDIST}/lib/libopencsg.so.${LIBopencsg_VERSION} \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKDIST}/include/opencsg.h ${PREFIX}/include

.include <bsd.port.mk>
