# $OpenBSD: Makefile,v 1.9 2020/07/03 21:13:20 sthen Exp $

MODPY_EGG_VERSION =	1.5.2
COMMENT =	mock out responses from py-requests
DISTNAME =	requests-mock-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	www
REVISION =	1

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

BUILD_DEPENDS =	devel/py-pbr${MODPY_FLAVOR}
RUN_DEPENDS =	devel/py-six${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

#TEST_DEPENDS =	devel/py-testtools${MODPY_FLAVOR}

# Requires py-testrepository
NO_TEST =	Yes

.include <bsd.port.mk>
