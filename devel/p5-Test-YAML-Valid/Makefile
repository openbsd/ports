# $OpenBSD: Makefile,v 1.6 2013/05/26 15:28:35 sthen Exp $

COMMENT =	test for valid YAML

MODULES =	cpan
DISTNAME =	Test-YAML-Valid-0.04
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-YAML
BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/p5-YAML-Syck \
		devel/p5-YAML-Tiny \
		devel/p5-YAML-XS

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
