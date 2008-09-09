# $OpenBSD: Makefile,v 1.1.1.1 2008/09/09 21:14:31 simon Exp $

COMMENT =	test for valid YAML

MODULES =	cpan
DISTNAME =	Test-YAML-Valid-0.03
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-YAML
BUILD_DEPENDS =	${RUN_DEPENDS} \
		::devel/p5-YAML-Syck

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
