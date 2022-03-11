COMMENT =		6502-series cross-assembler

MODPY_EGG_VERSION =	2.1.20190413
DISTNAME =		Ophis-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://michaelcmartin.github.io/Ophis/

# MIT
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		michaelcmartin
GH_PROJECT =		Ophis
#GH_TAGNAME =		v${MODPY_EGG_VERSION}
GH_COMMIT =		99f074da278d4ec80689c0e22e20c5552ea12512

MODULES =		lang/python

WRKSRC =		${WRKDIST}/src

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ophis
	${INSTALL_DATA} ${WRKDIST}/doc/ophismanual.pdf ${PREFIX}/share/doc/ophis

do-test:
	cd ${WRKDIST}/tests && ${MODPY_BIN} test_ophis.py

.include <bsd.port.mk>
