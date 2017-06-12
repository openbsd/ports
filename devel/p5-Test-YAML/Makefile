# $OpenBSD: Makefile,v 1.4 2017/06/12 10:57:57 ajacoutot Exp $

COMMENT =		testing module for YAML implementations

DISTNAME =		Test-YAML-1.06
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		Andrew Fresh <afresh1@openbsd.org>

PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		devel/p5-Test-Base>=0.86

# Additional depends for RELEASE_TESTING
TEST_DEPENDS +=		devel/p5-Test-Pod
MAKE_ENV +=		RELEASE_TESTING=1

.include <bsd.port.mk>
