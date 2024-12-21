COMMENT =		6502-series cross-assembler

MODPY_DISTV =	2.1
DISTNAME =		Ophis-${MODPY_DISTV}.20190413
PKGNAME =		${DISTNAME:L}
REVISION =		5

CATEGORIES =		devel

HOMEPAGE =		https://michaelcmartin.github.io/Ophis/

# MIT
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		michaelcmartin
GH_PROJECT =		Ophis
#GH_TAGNAME =		v${MODPY_DISTV}
GH_COMMIT =		99f074da278d4ec80689c0e22e20c5552ea12512

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

WRKSRC =		${WRKDIST}/src

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ophis
	${INSTALL_DATA} ${WRKDIST}/doc/ophismanual.pdf ${PREFIX}/share/doc/ophis

do-test:
	cd ${WRKDIST}/tests && ${MODPY_BIN} test_ophis.py

.include <bsd.port.mk>
