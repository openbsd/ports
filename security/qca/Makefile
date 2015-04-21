# $OpenBSD: Makefile,v 1.16 2015/04/21 18:19:27 sthen Exp $

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

MODULES=		x11/qt3

NO_TEST=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		LOCALBASE=${LOCALBASE}

MAKE_FLAGS=		LIBqca_VERSION=${LIBqca_VERSION}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/qt3
	${INSTALL_DATA} ${WRKBUILD}/libqca.so.${LIBqca_VERSION} ${PREFIX}/lib/qt3
	cd ${PREFIX}/lib && ln -s qt3/libqca.so.${LIBqca_VERSION}
	${INSTALL_DATA} ${WRKSRC}/src/qca.h ${PREFIX}/include

.include <bsd.port.mk>
