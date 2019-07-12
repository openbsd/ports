# $OpenBSD: Makefile,v 1.8 2019/07/12 20:48:34 sthen Exp $

COMMENT=		FreeBSD's tcp/udp traffic generator#'

DISTNAME=		netrate-20140413
CATEGORIES=		benchmarks net
REVISION=		0

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MASTER_SITES=		https://spacehopper.org/mirrors/

MAKE_ENV=		BINDIR=${PREFIX}/bin NOMAN=Yes
NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netrate
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/netrate/

.include <bsd.port.mk>
