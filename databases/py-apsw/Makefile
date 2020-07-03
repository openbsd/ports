# $OpenBSD: Makefile,v 1.12 2020/07/03 21:12:36 sthen Exp $

COMMENT =	thin SQLite wrapper for Python

MODPY_EGG_VERSION = 3.9.2
DISTNAME =	apsw-${MODPY_EGG_VERSION}-r1
MODPY_PI_DIR=	a/apsw
PKGNAME =	py-apsw-${MODPY_EGG_VERSION}
CATEGORIES =	databases
REVISION =	1

HOMEPAGE=	https://rogerbinns.github.io/apsw/

# zlib
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread sqlite3

LIB_DEPENDS =	databases/sqlite3

MODULES =	lang/python
MODPY_PI=	Yes

FLAVORS =	python3
FLAVOR ?=

MODPY_DISTUTILS_BUILDARGS = build_ext -I${LOCALBASE}/include

do-test: fake
	@cd ${WRKSRC} && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./tests.py

.include <bsd.port.mk>
