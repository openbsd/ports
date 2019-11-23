# $OpenBSD: Makefile,v 1.10 2019/11/23 19:54:06 kmos Exp $

COMMENT =		ELF and DWARF parser library for Python

MODPY_EGG_VERSION =	0.25
DISTNAME =		pyelftools-${MODPY_EGG_VERSION}
PKGNAME =		py-elftools-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://github.com/eliben/pyelftools
MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Public domain
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

EXAMPLEDIR =	${PREFIX}/share/examples/${MODPY_PY_PREFIX}elftools

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py ${EXAMPLEDIR}/
	mv ${PREFIX}/bin/readelf.py{,${MODPY_BIN_SUFFIX}}

TEST_ENV +=		PYTHONPATH=${WRKSRC}:${WRKSRC}/test

.include <bsd.port.mk>
