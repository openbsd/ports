# $OpenBSD: Makefile,v 1.22 2020/07/24 13:34:56 benoit Exp $

COMMENT =	interface to bzip2 compression library

DISTNAME =	Compress-Bzip2-2.28
CATEGORIES =	archivers

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
