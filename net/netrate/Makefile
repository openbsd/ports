# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:50 espie Exp $

COMMENT=		FreeBSD's tcp/udp traffic generator

DISTNAME=		netrate-20070208
CATEGORIES=		benchmarks net

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB += c

MASTER_SITES=		http://spacehopper.org/mirrors/

MAKE_ENV=		BINDIR=${PREFIX}/bin NOMAN=Yes
NO_TEST=		Yes

.include <bsd.port.mk>
