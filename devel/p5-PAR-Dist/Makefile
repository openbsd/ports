# $OpenBSD: Makefile,v 1.19 2020/07/03 21:45:04 sthen Exp $

COMMENT=	create and manipulate PAR distributions

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	PAR-Dist-0.49
CATEGORIES=	devel archivers
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

MAKE_ENV=	PERL_TEST_POD=Yes TEST_POD=Yes

.include <bsd.port.mk>
