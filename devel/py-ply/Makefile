# $OpenBSD: Makefile,v 1.3 2017/01/03 19:19:49 landry Exp $

COMMENT =		Python lex/yacc

MODPY_EGG_VERSION =	3.9
DISTNAME =		ply-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		http://www.dabeaz.com/ply/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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
