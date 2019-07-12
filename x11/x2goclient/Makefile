# $OpenBSD: Makefile,v 1.11 2019/07/12 20:51:25 sthen Exp $

COMMENT =	Qt4 client for the X2Go system

DISTNAME =	x2goclient-4.1.2.1
REVISION =	2

CATEGORIES =	x11

HOMEPAGE =	https://www.x2go.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE QtGui QtNetwork QtSvg SM X11
WANTLIB += Xext Xi Xinerama Xpm Xrender c cups fontconfig freetype
WANTLIB += ldap m ssh

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	https://code.x2go.org/releases/source/x2goclient/

MODULES +=	x11/qt4

LIB_DEPENDS +=	security/libssh>=0.8.4 \
		databases/openldap \
		print/cups,-libs

RUN_DEPENDS +=	x11/nx/nxcomp \
		x11/nx/nxproxy \
		shells/bash

DOCSDIR =	${PREFIX}/share/doc/x2goclient
EXAMPLESDIR =	${PREFIX}/share/examples/x2goclient

LRELEASE =	${LOCALBASE}/bin/lrelease4

do-configure:
	find ${WRKSRC} -type f -iname "*.cpp"  -exec \
		perl -pi -e 's,Q_OS_LINUX,Q_OS_UNIX,g;' \
		-e 's,#include <linux/fs.h>,,g;' {} \;
	find ${WRKSRC} -type f -iname "*.h" -exec \
		perl -pi -e 's,Q_OS_LINUX,Q_OS_UNIX,g;' \
		-e 's,#include <linux/fs.h>,,g;' {} \;
	sed -i -e 's,nxproxy -S nx,${LOCALBASE}/NX/bin/nxproxy -S nx,' \
		${WRKSRC}/src/onmainwindow.cpp
	cd ${WRKSRC} && ${LRELEASE} x2goclient.pro \
		&& ${MODQT4_QMAKE} x2goclient.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/x2goclient ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/man1/x2goclient.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/x2goclient-cli ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/HOWTO.GPGCARD ${EXAMPLESDIR}

.include <bsd.port.mk>
