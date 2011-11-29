# $OpenBSD: Makefile,v 1.7 2011/11/29 18:30:35 gsoares Exp $

COMMENT =	Perl Archive Toolkit

CPAN_AUTHOR =	RSCHUPP

MODULES =	cpan
DISTNAME =	PAR-1.003
CATEGORIES =	devel archivers

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	archivers/p5-Archive-Zip \
		devel/p5-PAR-Dist

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MAKE_ENV =	PERL_TEST_POD=Yes TEST_POD=ThisToo

.include <bsd.port.mk>
