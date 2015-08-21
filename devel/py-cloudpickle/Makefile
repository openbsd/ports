# $OpenBSD: Makefile,v 1.1.1.1 2015/08/21 23:44:49 bcallah Exp $

COMMENT =	extended pickling support for Python objects
MODPY_EGG_VERSION =	0.1.0
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

TEST_DEPENDS =	devel/py-mock \
		devel/py-test

.include <bsd.port.mk>
