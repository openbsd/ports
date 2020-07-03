# $OpenBSD: Makefile,v 1.20 2020/07/03 21:13:14 sthen Exp $

COMMENT =	python package to parse and build CSS

CATEGORIES =	textproc

MODPY_EGG_VERSION =	1.0.2
DISTNAME =	cssutils-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
MODPY_PI =	Yes
REVISION =	1

# GPLv3
PERMIT_PACKAGE=	Yes

HOMEPAGE =	http://cthedot.de/cssutils/

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	lib/cssutils

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS =	devel/py-pbr${MODPY_FLAVOR}

post-install:
	chmod 444 ${WRKINST}/${MODPY_SITEPKG}/${DISTNAME}-py${MODPY_VERSION}.egg-info/*
.for b in csscapture csscombine cssparse
	mv -f ${PREFIX}/bin/$b ${PREFIX}/bin/$b${MODPY_BIN_SUFFIX}
.endfor

.include <bsd.port.mk>
