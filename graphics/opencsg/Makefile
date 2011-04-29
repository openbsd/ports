# $OpenBSD: Makefile,v 1.1.1.1 2011/04/29 18:00:03 matthew Exp $

COMMENT =		Constructive Solid Geometry rendering library

V =			1.3.1
DISTNAME =		OpenCSG-${V}
PKGNAME =		opencsg-${V}

SHARED_ONLY =		Yes
SHARED_LIBS =		opencsg		0.0

CATEGORIES =		graphics

HOMEPAGE =		http://www.opencsg.org/

# GPLv2 with CGAL exception
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		GL GLEW GLU lib/qt4/QtGui m stdc++

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
