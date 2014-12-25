# $OpenBSD: Makefile,v 1.19 2014/12/25 19:44:47 shadchin Exp $

COMMENT =		Python API for advanced date calculations

MODPY_EGG_VERSION =	2.3
DISTNAME =		python-dateutil-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^python-/py-/}
CATEGORIES =    	devel

HOMEPAGE =		https://dateutil.readthedocs.org/
MAINTAINER =		frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/python-dateutil/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS +=		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS +=		${RUN_DEPENDS}

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
