# $OpenBSD: Makefile,v 1.1.1.1 2008/10/16 00:00:05 sthen Exp $

COMMENT =	Perl Archive Toolkit

MODULES =	cpan
DISTNAME =	PAR-0.980
CATEGORIES =	devel archivers

RUN_DEPENDS =	${BUILD_DEPENDS}

BUILD_DEPENDS =	::archivers/p5-Archive-Zip \
		::devel/p5-PAR-Dist

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MAKE_ENV =	PERL_TEST_POD=Yes

.include <bsd.port.mk>
