# $OpenBSD: Makefile,v 1.1.1.1 2005/05/19 20:28:27 niallo Exp $ 

COMMENT=                "Qt Cryptographic Architecture, TLS plugin"

DISTNAME=               qca-tls-1.0
CATEGORIES=             security

HOMEPAGE=               http://delta.affinix.com/qca/

MAINTAINER=             Gerardo Santana Gomez Garrido <santana@openbsd.org.mx>

RUN_DEPENDS=            qca.1::security/qca

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		ssl crypto

SHARED_ONLY=		Yes
MODULES=                x11/qt3
MODQT_MT=               Yes
MASTER_SITES=           ${HOMEPAGE}
EXTRACT_SUFX=           .tar.bz2

NO_REGRESS=             Yes

USE_GMAKE=              Yes
CONFIGURE_STYLE=        simple
CONFIGURE_ENV=		LOCALBASE=${LOCALBASE}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/qt3/plugins/crypto 
	${INSTALL_DATA} ${WRKSRC}/libqca-tls.so ${PREFIX}/lib/qt3/plugins/crypto

.include <bsd.port.mk>
