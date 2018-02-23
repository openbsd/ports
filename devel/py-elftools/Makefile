# $OpenBSD: Makefile,v 1.6 2018/02/23 21:36:30 sthen Exp $

COMMENT =		ELF and DWARF parser library for Python

MODPY_EGG_VERSION =	0.24
DISTNAME =		pyelftools-${MODPY_EGG_VERSION}
PKGNAME =		py-elftools-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/eliben/pyelftools
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# Public domain
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODULES =		lang/python

EXAMPLEDIR =	${PREFIX}/share/examples/${MODPY_PY_PREFIX}elftools

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py ${EXAMPLEDIR}/
	mv ${PREFIX}/bin/readelf.py{,${MODPY_BIN_SUFFIX}}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test/run_all_unittests.py

.include <bsd.port.mk>
