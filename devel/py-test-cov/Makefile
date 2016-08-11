# $OpenBSD: Makefile,v 1.6 2016/08/11 09:50:05 shadchin Exp $

COMMENT =		library for stubbing in Python

MODPY_EGG_VERSION =	2.3.1
DISTNAME =		pytest-cov-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://pytest-cov.readthedocs.org/en/latest/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
