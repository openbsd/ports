COMMENT =	Python extension that gives access to YARA

GH_PROJECT =	yara-python

MODPY_DISTV =	4.5.2
PKGNAME =	py-yara-${MODPY_DISTV}
GH_TAGNAME =	v${MODPY_DISTV}

COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

WANTLIB += yara

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

MAKE_FLAG +=	CPPFLAGS="-I${LOCALBASE}/include/yara/"

LIB_DEPENDS =	security/yara/main
TEST_DEPENDS =	security/yara/python=${MODPY_DISTV}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./tests.py

.include <bsd.port.mk>
