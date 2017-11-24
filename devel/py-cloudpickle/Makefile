# $OpenBSD: Makefile,v 1.6 2017/11/24 17:01:11 bcallah Exp $

COMMENT =	extended pickling support for Python objects
MODPY_EGG_VERSION =	0.5.2
DISTNAME =	cloudpickle-${MODPY_EGG_VERSION}
PKGNAME =	py-cloudpickle-${MODPY_EGG_VERSION}
CATEGORIES =	devel

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
