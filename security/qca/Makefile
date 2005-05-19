# $OpenBSD: Makefile,v 1.1.1.1 2005/05/19 20:26:59 niallo Exp $

COMMENT=	"Qt Cryptographic Architecture"

DISTNAME=	qca-1.0
CATEGORIES=	security

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

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libqca.so.1.0 ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/src/qca.h ${PREFIX}/include

.include <bsd.port.mk>
