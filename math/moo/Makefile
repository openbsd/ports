#	$OpenBSD: Makefile,v 1.11 2013/03/11 11:23:55 espie Exp $

COMMENT=		Marco's Object Oriented calculator#'

DISTNAME=		moo-1.3
REVISION=		1
CATEGORIES=		math

MAINTAINER=		Raymond Lai <ray@cyth.net>

HOMEPAGE=		http://cyth.net/moo/
MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tgz

# Public domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_FLAGS=		CC=${CC}
FAKE_FLAGS=		BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
