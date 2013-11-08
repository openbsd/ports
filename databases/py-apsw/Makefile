# $OpenBSD: Makefile,v 1.1.1.1 2013/11/08 22:52:27 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	thin SQLite wrapper for Python

MODPY_EGG_VERSION = 3.8.0.2
DISTNAME =	apsw-${MODPY_EGG_VERSION}-r1
EXTRACT_SUFX =	.zip
PKGNAME =	py-apsw-${MODPY_EGG_VERSION}
CATEGORIES =	databases

MASTER_SITES =	https://apsw.googlecode.com/files/
HOMEPAGE=	https://code.google.com/p/apsw/

# zlib
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread sqlite3

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

do-test: fake
	@cd ${WRKSRC} && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./tests.py

.include <bsd.port.mk>
