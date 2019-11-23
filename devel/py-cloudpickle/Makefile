# $OpenBSD: Makefile,v 1.9 2019/11/23 19:26:52 kmos Exp $

COMMENT =	extended pickling support for Python objects
MODPY_EGG_VERSION =	0.5.2
DISTNAME =	cloudpickle-${MODPY_EGG_VERSION}
PKGNAME =	py-cloudpickle-${MODPY_EGG_VERSION}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	https://github.com/cloudpipe/cloudpickle
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS =	devel/py-mock${MODPY_FLAVOR} \
		www/py-tornado${MODPY_FLAVOR}

.include <bsd.port.mk>
