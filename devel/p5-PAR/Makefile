# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:20 espie Exp $

COMMENT =	Perl Archive Toolkit

CPAN_AUTHOR =	RSCHUPP

MODULES =	cpan
DISTNAME =	PAR-1.004
CATEGORIES =	devel archivers

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	archivers/p5-Archive-Zip \
		devel/p5-PAR-Dist

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV =	PERL_TEST_POD=Yes TEST_POD=ThisToo

.include <bsd.port.mk>
