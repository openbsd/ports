COMMENT =		Python lex/yacc

MODPY_EGG_VERSION =	3.11
DISTNAME =		ply-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		7

HOMEPAGE =		https://www.dabeaz.com/ply/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

do-test:
	cd ${WRKSRC}/test && \
	    ${MODPY_BIN} testlex.py && \
	    ${MODPY_BIN} testyacc.py

.include <bsd.port.mk>
