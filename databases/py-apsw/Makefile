COMMENT =	thin SQLite wrapper for Python

# version 3.XX.Y.Z of apsw usually needs sqlite3 of at least 3.XX
MODPY_EGG_VERSION = 3.44.2.0
DISTNAME =	apsw-${MODPY_EGG_VERSION}
PKGNAME =	py-apsw-${MODPY_EGG_VERSION}
CATEGORIES =	databases

HOMEPAGE =	https://rogerbinns.github.io/apsw/

# zlib
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/rogerbinns/apsw/releases/download/${MODPY_EGG_VERSION}/

EXTRACT_SUFX =	.zip

WANTLIB += ${MODPY_WANTLIB} pthread sqlite3

LIB_DEPENDS =	databases/sqlite3

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
CFLAGS +=	-I${LOCALBASE}/include

FLAVORS =	python3
FLAVOR =	python3

do-test: fake
	@cd ${WRKSRC} && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} apsw/tests.py

.include <bsd.port.mk>
