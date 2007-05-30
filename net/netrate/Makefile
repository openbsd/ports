# $OpenBSD: Makefile,v 1.2 2007/05/30 04:12:29 robert Exp $

COMMENT=		"FreeBSD's tcp/udp traffic generator"

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
