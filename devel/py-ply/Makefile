COMMENT =		Python lex/yacc

MODPY_DISTV =	3.11
DISTNAME =		ply-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		8

HOMEPAGE =		https://www.dabeaz.com/ply/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

do-test:
	cd ${WRKSRC}/test && \
	    ${MODPY_BIN} testlex.py && \
	    ${MODPY_BIN} testyacc.py

.include <bsd.port.mk>
