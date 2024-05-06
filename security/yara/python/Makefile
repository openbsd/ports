COMMENT = Python extension that gives access to YARA

GH_PROJECT = 	yara-python

MODPY_EGG_VERSION =	4.2.0
PKGNAME =		py-yara-${MODPY_EGG_VERSION}
GH_TAGNAME =		v${MODPY_EGG_VERSION}
REVISION =		5

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += yara

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

FLAVORS =	python3
FLAVOR =	python3

MODPY_DISTUTILS_BUILDARGS = --dynamic-linking
MAKE_FLAG +=	CPPFLAGS="-I${LOCALBASE}/include/yara/"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

BUILD_DEPENDS = security/yara/main>=${VERSION}
RUN_DEPENDS =	security/yara/main>=${VERSION}

TEST_DEPENDS =	security/yara/python${MODPY_FLAVOR}=${MODPY_EGG_VERSION}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./tests.py

.include <bsd.port.mk>
