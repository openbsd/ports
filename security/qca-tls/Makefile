# $OpenBSD: Makefile,v 1.18 2015/04/21 18:19:27 sthen Exp $ 

COMMENT=		Qt Cryptographic Architecture, TLS plugin

DISTNAME=		qca-tls-1.0
REVISION=		11
CATEGORIES=		security

HOMEPAGE=		http://delta.affinix.com/qca/

RUN_DEPENDS=		security/qca

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto m pthread ssl stdc++

SHARED_ONLY=		Yes
MODULES=		x11/qt3
MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

NO_TEST=		Yes

USE_GMAKE=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		LOCALBASE=${LOCALBASE}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODQT_PLUGINS}/crypto 
	${INSTALL_DATA} ${WRKSRC}/libqca-tls.so ${PREFIX}/${MODQT_PLUGINS}/crypto

SUBST_VARS+= MODQT_PLUGINS

.include <bsd.port.mk>
