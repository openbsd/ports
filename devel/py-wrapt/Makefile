# $OpenBSD: Makefile,v 1.4 2017/01/03 19:19:49 landry Exp $

COMMENT =		Python module for decorators, wrappers and monkey patching

MODPY_EGG_VERSION =	1.10.8
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

WANTLIB += pthread ${MODPY_WANTLIB}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

do-test: fake
	 cd ${WRKSRC} && env PYTHONPATH=${WRKINST}/${MODPY_SITEPKG} \
		${MODPY_BIN} -m pytest

.include <bsd.port.mk>
