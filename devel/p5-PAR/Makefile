# $OpenBSD: Makefile,v 1.16 2019/07/12 20:45:02 sthen Exp $

COMMENT =	Perl Archive Toolkit

CPAN_AUTHOR =	RSCHUPP

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	PAR-1.015
CATEGORIES =	devel archivers

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	archivers/p5-Archive-Zip \
		devel/p5-PAR-Dist

# Perl
PERMIT_PACKAGE =	Yes

MAKE_ENV =	PERL_TEST_POD=Yes TEST_POD=ThisToo

.include <bsd.port.mk>
