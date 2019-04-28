# $OpenBSD: Makefile,v 1.7 2019/04/28 20:51:31 sthen Exp $

COMMENT =	extended pickling support for Python objects
MODPY_EGG_VERSION =	0.5.2
DISTNAME =	cloudpickle-${MODPY_EGG_VERSION}
PKGNAME =	py-cloudpickle-${MODPY_EGG_VERSION}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	https://github.com/cloudpipe/cloudpickle
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS =	devel/py-mock${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
