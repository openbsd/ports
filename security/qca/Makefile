# $OpenBSD: Makefile,v 1.17 2016/12/26 08:47:45 zhuk Exp $

COMMENT=	Qt Cryptographic Architecture

DISTNAME=	qca-1.0
REVISION=	8
CATEGORIES=	security
SHARED_LIBS=	qca	2.0

HOMEPAGE=	http://delta.affinix.com/qca/

MAINTAINER=	Gerardo Santana Gomez Garrido <gerardo.santana@gmail.com>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m pthread stdc++

MASTER_SITES=		http://delta.affinix.com/download/qca/
EXTRACT_SUFX=		.tar.bz2

MODULES=		x11/qt3 devel/qmake

NO_TEST=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/qt3
	${INSTALL_DATA} ${WRKBUILD}/libqca.so.${LIBqca_VERSION} ${PREFIX}/lib/qt3
	cd ${PREFIX}/lib && ln -s qt3/libqca.so.${LIBqca_VERSION}
	${INSTALL_DATA} ${WRKSRC}/src/qca.h ${PREFIX}/include

.include <bsd.port.mk>
