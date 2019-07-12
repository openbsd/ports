# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:47 sthen Exp $

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

EXAMPLEDIR =	${PREFIX}/share/examples/${MODPY_PY_PREFIX}elftools

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py ${EXAMPLEDIR}/
	mv ${PREFIX}/bin/readelf.py{,${MODPY_BIN_SUFFIX}}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test/run_all_unittests.py

.include <bsd.port.mk>
