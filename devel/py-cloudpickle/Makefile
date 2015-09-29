# $OpenBSD: Makefile,v 1.3 2015/09/29 10:51:44 sthen Exp $

COMMENT =	extended pickling support for Python objects
MODPY_EGG_VERSION =	0.1.1
DISTNAME =	cloudpickle-${MODPY_EGG_VERSION}
PKGNAME =	py-cloudpickle-${MODPY_EGG_VERSION}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	https://github.com/cloudpipe/cloudpickle

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

TEST_DEPENDS =	devel/py-mock \
		devel/py-test

.include <bsd.port.mk>
