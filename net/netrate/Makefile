# $OpenBSD: Makefile,v 1.7 2018/06/01 15:32:04 sthen Exp $

COMMENT=		FreeBSD's tcp/udp traffic generator#'

DISTNAME=		netrate-20140413
CATEGORIES=		benchmarks net
REVISION=		0

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MASTER_SITES=		https://spacehopper.org/mirrors/

MAKE_ENV=		BINDIR=${PREFIX}/bin NOMAN=Yes
NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netrate
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/netrate/

.include <bsd.port.mk>
