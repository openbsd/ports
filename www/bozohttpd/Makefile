# $OpenBSD: Makefile,v 1.19 2014/11/05 11:43:59 sthen Exp $

COMMENT =	bozotic HTTP server

DISTNAME =	bozohttpd-20140708
CATEGORIES =	www
REVISION =	0

HOMEPAGE =	http://www.eterna.com.au/bozohttpd/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto m ssl

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

FAKE_FLAGS =		BINDIR=${PREFIX}/libexec MANDIR=${PREFIX}/man/man

post-extract:
	rm ${WRKSRC}/{auth-bozo,bozohttpd}.c.orig

do-test:
	cd ${WRKSRC}/testsuite && ${MAKE_PROGRAM} ${MAKE_FLAGS} check

.include <bsd.port.mk>
