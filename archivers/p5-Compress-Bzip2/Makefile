# $OpenBSD: Makefile,v 1.21 2020/07/03 21:44:29 sthen Exp $

COMMENT =	interface to bzip2 compression library

DISTNAME =	Compress-Bzip2-2.26
CATEGORIES =	archivers
REVISION =	1

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += bz2>=10 c perl

MODULES =	cpan
LIB_DEPENDS =	archivers/bzip2

MAKE_ENV =	TEST_POD=Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config.in

.include <bsd.port.mk>
