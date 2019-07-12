# $OpenBSD: Makefile,v 1.15 2019/07/12 20:45:53 sthen Exp $

COMMENT =		library for getting/setting process names

MODPY_EGG_VERSION =	1.1.10
DISTNAME =		setproctitle-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/dvarrazzo/py-setproctitle

# BSD 3-clause
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

WANTLIB +=		${MODPY_WANTLIB} pthread

BUILD_DIR =		build/lib.${MODPY_VERSION}
MODPY_DISTUTILS_BUILDARGS = --build-lib ${BUILD_DIR}

TEST_DEPENDS =	devel/gmake

MAKE_ENV +=		PYTHON="${MODPY_BIN}" PYCONFIG="${MODPY_BIN}-config" \
			PY2TO3="2to3-${MODPY_VERSION}"

do-test:
	cd ${WRKSRC} && gmake ${MAKE_ENV} check

.include <bsd.port.mk>
