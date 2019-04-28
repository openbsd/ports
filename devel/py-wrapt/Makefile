# $OpenBSD: Makefile,v 1.7 2019/04/28 20:51:39 sthen Exp $

COMMENT =		Python module for decorators, wrappers and monkey patching

MODPY_EGG_VERSION =	1.10.10
DISTNAME =		wrapt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

GH_ACCOUNT =		GrahamDumpleton
GH_PROJECT =		wrapt
GH_TAGNAME =		${MODPY_EGG_VERSION}

HOMEPAGE =		https://wrapt.readthedocs.org/en/latest/

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

WANTLIB += pthread ${MODPY_WANTLIB}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

TEST_ENV +=		PYTHONPATH=${WRKINST}/${MODPY_SITEPKG}

do-test: fake
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
