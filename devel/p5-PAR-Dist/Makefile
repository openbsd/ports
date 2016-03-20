# $OpenBSD: Makefile,v 1.17 2016/03/20 19:56:30 naddy Exp $

COMMENT=	create and manipulate PAR distributions

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	PAR-Dist-0.49
CATEGORIES=	devel archivers

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	PERL_TEST_POD=Yes TEST_POD=Yes

.include <bsd.port.mk>
