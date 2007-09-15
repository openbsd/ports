# $OpenBSD: Makefile,v 1.4 2007/09/15 20:38:20 merdely Exp $

COMMENT=	bozotic HTTP server

DISTNAME=	bozohttpd-20050410
CATEGORIES=	www
HOMEPAGE=	http://www.eterna.com.au/bozohttpd/

MAINTAINER=	Maxime Guillaud <bsd-ports@mguillaud.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl 

MASTER_SITES=	${HOMEPAGE} \
		http://www.mguillaud.net/ports/bozohttpd/
EXTRACT_SUFX=	.tar.bz2

FAKE_FLAGS=	BINDIR=${TRUEPREFIX}/libexec MANDIR=${TRUEPREFIX}/man/cat
REGRESS_TARGET=	check

.include <bsd.port.mk>
