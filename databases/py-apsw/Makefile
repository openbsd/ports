COMMENT =	thin SQLite wrapper for Python

# version 3.XX.Y.Z of apsw usually needs sqlite3 of at least 3.XX
MODPY_DISTV =	3.48.0.0
DISTNAME =	apsw-${MODPY_DISTV}
PKGNAME =	py-apsw-${MODPY_DISTV}
CATEGORIES =	databases

HOMEPAGE =	https://rogerbinns.github.io/apsw/

# zlib
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/rogerbinns/apsw/releases/download/${MODPY_DISTV}/

EXTRACT_SUFX =	.zip

WANTLIB += ${MODPY_WANTLIB} pthread sqlite3

LIB_DEPENDS =	databases/sqlite3

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
CFLAGS +=	-I${LOCALBASE}/include

do-test:
	@if ! [ -e ${WRKINST}/.fake_done ]; then echo 'run "make fake" first'; exit 1; fi
	@cd ${WRKSRC} && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} apsw/tests.py

.include <bsd.port.mk>
