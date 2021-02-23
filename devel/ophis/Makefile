# $OpenBSD: Makefile,v 1.5 2021/02/23 19:39:17 sthen Exp $

COMMENT =		6502-series cross-assembler

MODPY_EGG_VERSION =	2.1
DISTNAME =		Ophis-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}

CATEGORIES =		devel

HOMEPAGE =		https://michaelcmartin.github.io/Ophis/

# BSD
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		michaelcmartin
GH_PROJECT =		Ophis
GH_TAGNAME =		v${MODPY_EGG_VERSION}

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

WRKSRC =		${WRKDIST}/src

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ophis
	${INSTALL_DATA} ${WRKDIST}/doc/ophismanual.pdf ${PREFIX}/share/doc/ophis

do-test:
	cd ${WRKDIST}/tests && ${MODPY_BIN} test_ophis.py

.include <bsd.port.mk>
