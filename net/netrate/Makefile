# $OpenBSD: Makefile,v 1.3 2007/09/15 22:36:56 merdely Exp $

COMMENT=		FreeBSD's tcp/udp traffic generator

DISTNAME=		netrate-20070208
CATEGORIES=		benchmarks net

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB += c

MASTER_SITES=		http://spacehopper.org/mirrors/

MAKE_ENV=		BINDIR=${PREFIX}/bin NOMAN=Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
