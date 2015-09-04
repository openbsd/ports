# $OpenBSD: Makefile,v 1.5 2015/09/04 15:52:41 sthen Exp $

COMMENT=		FreeBSD's tcp/udp traffic generator#'

DISTNAME=		netrate-20140413
CATEGORIES=		benchmarks net

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MASTER_SITES=		http://spacehopper.org/mirrors/

MAKE_ENV=		BINDIR=${PREFIX}/bin NOMAN=Yes
NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netrate
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/netrate/

.include <bsd.port.mk>
