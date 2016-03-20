# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:39 naddy Exp $

COMMENT =		testing module for YAML implementations

DISTNAME =		Test-YAML-1.05
CATEGORIES =		devel

MAINTAINER =		Andrew Fresh <afresh1@openbsd.org>

PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		devel/p5-Test-Base>=0.86

TEST_DEPENDS =		devel/p5-Test-Pod
MAKE_ENV +=		RELEASE_TESTING=1

.include <bsd.port.mk>
