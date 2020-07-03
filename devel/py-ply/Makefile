# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:48 sthen Exp $

COMMENT =		Python lex/yacc

MODPY_EGG_VERSION =	3.11
DISTNAME =		ply-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		2

HOMEPAGE =		https://www.dabeaz.com/ply/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC}/test && \
	    ${MODPY_BIN} testlex.py && \
	    ${MODPY_BIN} testyacc.py

.include <bsd.port.mk>
