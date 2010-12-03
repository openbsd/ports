# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:34 ajacoutot Exp $

COMMENT =	Perl Archive Toolkit

MODULES =	cpan
DISTNAME =	PAR-0.980
REVISION =	0
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

MAKE_ENV =	PERL_TEST_POD=Yes

.include <bsd.port.mk>
