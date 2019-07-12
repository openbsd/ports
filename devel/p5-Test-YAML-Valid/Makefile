# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:12 sthen Exp $

COMMENT =	test for valid YAML

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-YAML-Valid-0.04
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-YAML
BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/p5-YAML-Syck \
		devel/p5-YAML-Tiny \
		devel/p5-YAML-XS

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
