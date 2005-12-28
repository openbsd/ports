# $OpenBSD: Makefile,v 1.2 2005/12/28 22:38:59 sturm Exp $

COMMENT=	"Qt Cryptographic Architecture"

DISTNAME=	qca-1.0
CATEGORIES=	security
SHARED_LIBS=	qca	1.0

HOMEPAGE=	http://delta.affinix.com/qca/

MAINTAINER=	Gerardo Santana Gomez Garrido <santana@openbsd.org.mx>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

MODULES=		x11/qt3
MODQT_MT=		Yes
MODQT_MT=Yes

NO_REGRESS=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		LOCALBASE=${LOCALBASE}

MAKE_FLAGS=		LIBqca_VERSION=${LIBqca_VERSION}

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libqca.so.${LIBqca_VERSION} ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/src/qca.h ${PREFIX}/include

.include <bsd.port.mk>
