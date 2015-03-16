# $OpenBSD: Makefile,v 1.15 2015/03/16 18:07:54 naddy Exp $

COMMENT=	Qt Cryptographic Architecture

DISTNAME=	qca-1.0
REVISION=	7
CATEGORIES=	security
SHARED_LIBS=	qca	2.0

HOMEPAGE=	http://delta.affinix.com/qca/

MAINTAINER=	Gerardo Santana Gomez Garrido <gerardo.santana@gmail.com>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://delta.affinix.com/download/qca/
EXTRACT_SUFX=		.tar.bz2

MODULES=		x11/qt3
WANTLIB=		m stdc++

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
