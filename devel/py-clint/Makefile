COMMENT =		command line interface tools for Python

MODPY_DISTV =	0.5.1
DISTNAME =		clint-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		10

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

DOCS =			${PREFIX}/share/doc/${MODPY_PY_PREFIX}clint

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${WRKSRC} && pax -rw *.rst ${DOCS}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test_clint.py

.include <bsd.port.mk>
