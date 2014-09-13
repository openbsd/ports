# $OpenBSD: Makefile,v 1.1.1.1 2014/09/13 10:08:43 ajacoutot Exp $

COMMENT=		Qt4 Solutions single application framework

DISTNAME=		qt4-qtsolutions-singleinstance-20110722
WRKDIST=		${WRKDIR}/qt-solutions-qt-solutions/qtsingleapplication

SHARED_LIBS +=  QtSolutions_SingleApplication-head 0.0 # 1.0

CATEGORIES=		devel x11

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE QtGui QtNetwork SM X11 Xext Xi Xinerama Xrender
WANTLIB += fontconfig freetype m pthread stdc++

MASTER_SITES=		ftp://ftp.pcbsd.org/pub/software/ \
			http://www.pcbsd.org/~kris/software/

MODULES=		x11/qt4

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		-library
MAKE_FLAGS=		LIBQtSolutions_SingleApplication-head_VERSION=${LIBQtSolutions_SingleApplication-head_VERSION}

NO_TEST=		Yes

post-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake4

do-install:
	${INSTALL_DATA} ${WRKSRC}/src/qtsingleapplication.h \
		${WRKSRC}/src/qtsinglecoreapplication.h \
		${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/lib/libQtSolutions_SingleApplication-head.so.${LIBQtSolutions_SingleApplication-head_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
