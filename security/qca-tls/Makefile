# $OpenBSD: Makefile,v 1.20 2016/12/26 09:04:25 zhuk Exp $ 

COMMENT=		Qt Cryptographic Architecture, TLS plugin

DISTNAME=		qca-tls-1.0
REVISION=		11
CATEGORIES=		security

HOMEPAGE=		http://delta.affinix.com/qca/

RUN_DEPENDS=		security/qca

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto m pthread ssl stdc++

MODULES=		x11/qt3 devel/qmake
MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

NO_TEST=		Yes

CXXFLAGS+=		-DOSSL_097 -DOSSL_098

SUBST_VARS+= MODQT_PLUGINS

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODQT_PLUGINS}/crypto
	${INSTALL_DATA} ${WRKBUILD}/libqca-tls.so ${PREFIX}/${MODQT_PLUGINS}/crypto

.include <bsd.port.mk>
