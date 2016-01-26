# $OpenBSD: Makefile,v 1.4 2016/01/26 13:29:11 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	thin SQLite wrapper for Python

MODPY_EGG_VERSION = 3.8.0.2
REVISION =	1
DISTNAME =	apsw-${MODPY_EGG_VERSION}-r1
EXTRACT_SUFX =	.zip
PKGNAME =	py-apsw-${MODPY_EGG_VERSION}
CATEGORIES =	databases

HOMEPAGE=	https://rogerbinns.github.io/apsw/
MASTER_SITES=	https://apsw.googlecode.com/files/
PORTROACH=	site:https://github.com/rogerbinns/apsw/releases

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
