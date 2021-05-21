# $OpenBSD: Makefile,v 1.10 2021/05/21 19:50:39 kmos Exp $

MODPY_EGG_VERSION =	1.5.2
COMMENT =	mock out responses from py-requests
DISTNAME =	requests-mock-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	www
REVISION =	2

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
