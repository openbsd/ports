# $OpenBSD: Makefile,v 1.5 2013/03/10 23:04:44 espie Exp $

COMMENT=	tool to measure TCP throughput
DISTNAME=	netstrain-3.0
CATEGORIES=	benchmarks net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netstrain/}

HOMEPAGE=	http://netstrain.sourceforge.net/

# ISC-like
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netstrain
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/netstrain
	${INSTALL_PROGRAM} ${WRKBUILD}/netstraind ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/netstrain ${PREFIX}/bin

.include <bsd.port.mk>
