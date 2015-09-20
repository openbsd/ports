# $OpenBSD: Makefile,v 1.2 2015/09/20 12:45:50 jasper Exp $

COMMENT =	extended pickling support for Python objects
MODPY_EGG_VERSION =	0.1.1
DISTNAME =	cloudpickle-${MODPY_EGG_VERSION}
PKGNAME =	py-cloudpickle-${MODPY_EGG_VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://github.com/cloudpipe/cloudpickle

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

TEST_DEPENDS =	devel/py-mock \
		devel/py-test

.include <bsd.port.mk>
