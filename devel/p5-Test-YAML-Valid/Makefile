# $OpenBSD: Makefile,v 1.7 2015/11/05 19:08:58 jca Exp $

COMMENT =	test for valid YAML

MODULES =	cpan
DISTNAME =	Test-YAML-Valid-0.04
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-YAML
BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/p5-YAML-Syck \
		devel/p5-YAML-Tiny \
		devel/p5-YAML-XS

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
