# $OpenBSD: Makefile,v 1.15 2015/12/09 10:45:32 benoit Exp $

SHARED_ONLY =	Yes

COMMENT =	interface to bzip2 compression library

DISTNAME =	Compress-Bzip2-2.24
CATEGORIES =	archivers

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
LIB_DEPENDS =	archivers/bzip2
WANTLIB =	bz2>=10

MAKE_ENV =	TEST_POD=Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config.in

.include <bsd.port.mk>
