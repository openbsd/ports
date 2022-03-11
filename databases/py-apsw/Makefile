COMMENT =	thin SQLite wrapper for Python

# version 3.XX.Y of apsw usually needs sqlite3 of at least 3.XX
MODPY_EGG_VERSION = 3.35.4
DISTVERSIONSUFFIX = -r1
DISTNAME =	apsw-${MODPY_EGG_VERSION}${DISTVERSIONSUFFIX}
PKGNAME =	py-apsw-${MODPY_EGG_VERSION}
CATEGORIES =	databases
REVISION =	0

HOMEPAGE =	https://rogerbinns.github.io/apsw/

# zlib
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/rogerbinns/apsw/releases/download/${MODPY_EGG_VERSION}${DISTVERSIONSUFFIX}/

EXTRACT_SUFX =	.zip

WANTLIB += ${MODPY_WANTLIB} pthread sqlite3

LIB_DEPENDS =	databases/sqlite3

MODULES =	lang/python
FLAVORS =	python3
FLAVOR =	python3

MODPY_DISTUTILS_BUILDARGS = build_ext -I${LOCALBASE}/include --enable=load_extension

do-test: fake
	@cd ${WRKSRC} && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./tests.py

.include <bsd.port.mk>
