# $OpenBSD: Makefile,v 1.20 2015/04/02 14:21:14 jasper Exp $

COMMENT =		Python API for advanced date calculations

MODPY_EGG_VERSION =	2.3
DISTNAME =		python-dateutil-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^python-/py-/}
CATEGORIES =    	devel

HOMEPAGE =		https://dateutil.readthedocs.org/
MAINTAINER =		frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS +=		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS +=		${RUN_DEPENDS}

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
