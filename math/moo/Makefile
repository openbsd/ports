#	$OpenBSD: Makefile,v 1.10 2012/12/21 13:08:47 sthen Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MAKE_FLAGS=		CC=${CC}
FAKE_FLAGS=		BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
