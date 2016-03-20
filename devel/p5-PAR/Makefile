# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:30 naddy Exp $

COMMENT =	Perl Archive Toolkit

CPAN_AUTHOR =	RSCHUPP

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	PAR-1.010
CATEGORIES =	devel archivers

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	archivers/p5-Archive-Zip \
		devel/p5-PAR-Dist

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV =	PERL_TEST_POD=Yes TEST_POD=ThisToo

.include <bsd.port.mk>
