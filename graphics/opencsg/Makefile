# $OpenBSD: Makefile,v 1.4 2013/03/11 11:10:54 espie Exp $

COMMENT =		constructive solid geometry rendering library

V =			1.3.2
DISTNAME =		OpenCSG-${V}
PKGNAME =		opencsg-${V}

SHARED_ONLY =		Yes
SHARED_LIBS =		opencsg		0.0

CATEGORIES =		graphics

HOMEPAGE =		http://www.opencsg.org/

# GPLv2 with CGAL exception
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		GL GLEW lib/qt4/QtGui m stdc++ pthread
WANTLIB +=		ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

MODULES =		x11/qt4
LIB_DEPENDS =		graphics/glew

MASTER_SITES =		http://www.opencsg.org/

WRKSRC =		${WRKDIST}/src

do-configure:
	${SUBST_CMD} ${WRKSRC}/src.pro
	cd ${WRKSRC} && qmake4 src.pro

do-install:
	${INSTALL_DATA} ${WRKDIST}/lib/libopencsg.so.${LIBopencsg_VERSION} \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKDIST}/include/opencsg.h ${PREFIX}/include

.include <bsd.port.mk>
