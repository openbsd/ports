# $OpenBSD: Makefile,v 1.24 2016/05/30 14:48:51 shadchin Exp $

COMMENT =		Python API for advanced date calculations

MODPY_EGG_VERSION =	2.5.3
DISTNAME =		python-dateutil-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^python-/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://dateutil.readthedocs.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS +=		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS +=		${RUN_DEPENDS}

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
