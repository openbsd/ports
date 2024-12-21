COMMENT = Python extension that gives access to YARA

GH_PROJECT = 	yara-python

MODPY_DISTV =	4.2.0
PKGNAME =		py-yara-${MODPY_DISTV}
GH_TAGNAME =		v${MODPY_DISTV}
REVISION =		6

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += yara

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

MODPY_DISTUTILS_BUILDARGS = --dynamic-linking
MAKE_FLAG +=	CPPFLAGS="-I${LOCALBASE}/include/yara/"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

BUILD_DEPENDS = security/yara/main>=${VERSION}
RUN_DEPENDS =	security/yara/main>=${VERSION}

TEST_DEPENDS =	security/yara/python=${MODPY_DISTV}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./tests.py

.include <bsd.port.mk>
