# $OpenBSD: Makefile,v 1.5 2018/10/24 21:46:41 afresh1 Exp $

COMMENT =		testing module for YAML implementations

DISTNAME =		Test-YAML-1.07
CATEGORIES =		devel

MAINTAINER =		Andrew Fresh <afresh1@openbsd.org>

PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		devel/p5-Test-Base>=0.89

# Additional depends for AUTHOR_TESTING
TEST_DEPENDS +=		devel/p5-Test-Pod
MAKE_ENV +=		AUTHOR_TESTING=1

.include <bsd.port.mk>
