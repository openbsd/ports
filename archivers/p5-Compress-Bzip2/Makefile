# $OpenBSD: Makefile,v 1.12 2014/11/13 12:26:30 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to bzip2 compression library

DISTNAME =	Compress-Bzip2-2.19
CATEGORIES=	archivers

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
LIB_DEPENDS =	archivers/bzip2
WANTLIB =	bz2>=10

MAKE_ENV =	TEST_POD=Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config.in

.include <bsd.port.mk>
