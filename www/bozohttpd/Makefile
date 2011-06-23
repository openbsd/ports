# $OpenBSD: Makefile,v 1.12 2011/06/23 22:50:29 naddy Exp $

COMMENT =	bozotic HTTP server

DISTNAME =	bozohttpd-20100920
CATEGORIES =	www

HOMEPAGE =	http://splode.eterna.com.au/bozohttpd/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c crypto ssl 

MASTER_SITES =		${HOMEPAGE}

EXTRACT_SUFX =		.tar.bz2

FAKE_FLAGS =		BINDIR=${PREFIX}/libexec MANDIR=${PREFIX}/man/man

REGRESS_TARGET =	check

.include <bsd.port.mk>
