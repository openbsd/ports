COMMENT =		ELF and DWARF parser library for Python

MODPY_DISTV =	0.30
DISTNAME =		pyelftools-${MODPY_DISTV}
PKGNAME =		py-elftools-${MODPY_DISTV}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://github.com/eliben/pyelftools
MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Public domain
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
# test.test_pubtypes.TestEmptyPubtypes is known failure to due missing files in distfile

EXAMPLEDIR =	${PREFIX}/share/examples/${MODPY_PY_PREFIX}elftools

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py ${EXAMPLEDIR}/

TEST_ENV +=		PYTHONPATH=${WRKSRC}:${WRKSRC}/test

.include <bsd.port.mk>
