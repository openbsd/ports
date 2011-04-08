# $OpenBSD: Makefile,v 1.6 2011/04/08 07:09:13 jasper Exp $

COMMENT =	Perl Archive Toolkit

MODULES =	cpan
DISTNAME =	PAR-1.002
CATEGORIES =	devel archivers
USE_GROFF =	Yes

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
