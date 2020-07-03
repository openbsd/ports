# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:17 sthen Exp $

COMMENT =		testing module for YAML implementations

DISTNAME =		Test-YAML-1.07
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		Andrew Fresh <afresh1@openbsd.org>

PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		devel/p5-Test-Base>=0.89

# Additional depends for AUTHOR_TESTING
TEST_DEPENDS +=		devel/p5-Test-Pod
MAKE_ENV +=		AUTHOR_TESTING=1

.include <bsd.port.mk>
