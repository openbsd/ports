# $OpenBSD: Makefile,v 1.24 2018/12/30 13:26:59 benoit Exp $

COMMENT =	bozotic HTTP server

DISTNAME =	bozohttpd-20181215
CATEGORIES =	www

HOMEPAGE =	http://www.eterna.com.au/bozohttpd/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto m ssl

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

FAKE_FLAGS =		BINDIR=${PREFIX}/libexec MANDIR=${PREFIX}/man/man

do-test:
	cd ${WRKSRC}/testsuite && ${MAKE_PROGRAM} ${MAKE_FLAGS} check

.include <bsd.port.mk>
