# $OpenBSD: Makefile,v 1.10 2017/05/12 09:39:17 shadchin Exp $

COMMENT =		library for stubbing in Python

MODPY_EGG_VERSION =	2.5.1
DISTNAME =		pytest-cov-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://pytest-cov.readthedocs.org/en/latest/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
