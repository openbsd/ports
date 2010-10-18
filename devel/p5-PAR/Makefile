# $OpenBSD: Makefile,v 1.3 2010/10/18 17:48:04 espie Exp $

COMMENT =	Perl Archive Toolkit

MODULES =	cpan
DISTNAME =	PAR-0.980
CATEGORIES =	devel archivers
USE_GROFF =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	::archivers/p5-Archive-Zip \
		::devel/p5-PAR-Dist

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MAKE_ENV =	PERL_TEST_POD=Yes

.include <bsd.port.mk>
