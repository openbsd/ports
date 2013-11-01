# $OpenBSD: Makefile,v 1.15 2013/11/01 07:18:11 benoit Exp $

COMMENT =	bozotic HTTP server

DISTNAME =	bozohttpd-20130711
CATEGORIES =	www

HOMEPAGE =	http://www.eterna.com.au/bozohttpd/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto ssl 

MASTER_SITES =		${HOMEPAGE}

EXTRACT_SUFX =		.tar.bz2

FAKE_FLAGS =		BINDIR=${PREFIX}/libexec MANDIR=${PREFIX}/man/man

TEST_TARGET =	check

.include <bsd.port.mk>
