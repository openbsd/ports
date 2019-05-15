# $OpenBSD: Makefile,v 1.3 2019/05/15 12:04:43 kmos Exp $

COMMENT =		yet another URL library

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		yarl-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www devel

HOMEPAGE =		https://yarl.readthedocs.org

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		net/py-idna${MODPY_FLAVOR}>=2.0 \
			www/py-multidict>=4.0
TEST_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

.include <bsd.port.mk>
