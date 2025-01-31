COMMENT =		ELF and DWARF parser library for Python

MODPY_DISTV =		0.31
DISTNAME =		pyelftools-${MODPY_DISTV}
PKGNAME =		py-elftools-${MODPY_DISTV}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/eliben/pyelftools
MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Public domain
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_TEST_LIBDIR =	${WRKSRC}/test

EXAMPLEDIR =	${PREFIX}/share/examples/${MODPY_PY_PREFIX}elftools

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py ${EXAMPLEDIR}/

.include <bsd.port.mk>
