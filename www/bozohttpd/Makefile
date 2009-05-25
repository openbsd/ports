# $OpenBSD: Makefile,v 1.6 2009/05/25 10:24:34 benoit Exp $

COMMENT=	bozotic HTTP server

DISTNAME=	bozohttpd-20090522
CATEGORIES=	www

HOMEPAGE=	http://www.eterna.com.au/bozohttpd/

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c crypto ssl 

MASTER_SITES=	${HOMEPAGE}

EXTRACT_SUFX=	.tar.bz2

FAKE_FLAGS=	BINDIR=${TRUEPREFIX}/libexec MANDIR=${TRUEPREFIX}/man/cat
REGRESS_TARGET=	check

.include <bsd.port.mk>
