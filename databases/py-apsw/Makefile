# $OpenBSD: Makefile,v 1.9 2017/08/10 17:27:34 sthen Exp $

COMMENT =	thin SQLite wrapper for Python

MODPY_EGG_VERSION = 3.9.2
DISTNAME =	apsw-${MODPY_EGG_VERSION}-r1
MODPY_PI_DIR=	a/apsw
PKGNAME =	py-apsw-${MODPY_EGG_VERSION}
CATEGORIES =	databases

HOMEPAGE=	https://rogerbinns.github.io/apsw/

# zlib
PERMIT_PACKAGE_CDROM=	Yes

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
