# $OpenBSD: Makefile,v 1.13 2021/11/02 00:02:56 sthen Exp $

COMMENT =		yet another URL library

MODPY_EGG_VERSION =	1.4.2
DISTNAME =		yarl-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		4

CATEGORIES =		www devel

HOMEPAGE =		https://yarl.readthedocs.org

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python
FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		net/py-idna${MODPY_FLAVOR}>=2.0 \
			www/py-multidict${MODPY_FLAVOR}>=4.0
TEST_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

.include <bsd.port.mk>
