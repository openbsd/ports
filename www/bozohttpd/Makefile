# $OpenBSD: Makefile,v 1.16 2014/04/06 15:48:24 benoit Exp $

COMMENT =	bozotic HTTP server

DISTNAME =	bozohttpd-20140201
CATEGORIES =	www

HOMEPAGE =	http://www.eterna.com.au/bozohttpd/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto ssl

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

FAKE_FLAGS =		BINDIR=${PREFIX}/libexec MANDIR=${PREFIX}/man/man

do-test:
			cd ${WRKSRC}/testsuite && ${MAKE_PROGRAM} ${MAKE_FLAGS} check

.include <bsd.port.mk>
