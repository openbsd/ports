# $OpenBSD: Makefile,v 1.14 2013/03/11 11:44:41 espie Exp $

COMMENT =	bozotic HTTP server

DISTNAME =	bozohttpd-20111118
CATEGORIES =	www

HOMEPAGE =	http://splode.eterna.com.au/bozohttpd/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto ssl 

MASTER_SITES =		${HOMEPAGE}

EXTRACT_SUFX =		.tar.bz2

FAKE_FLAGS =		BINDIR=${PREFIX}/libexec MANDIR=${PREFIX}/man/man

TEST_TARGET =	check

.include <bsd.port.mk>
