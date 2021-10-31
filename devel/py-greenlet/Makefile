# $OpenBSD: Makefile,v 1.25 2021/10/31 19:35:14 sthen Exp $

COMMENT =	lightweight in-process concurrent programming

MODPY_EGG_VERSION = 1.1.2
DISTNAME =	greenlet-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

# BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PYTEST =	Yes
TEST_ENV =	PY_IGNORE_IMPORTMISMATCH=1

FLAVORS =	python3
FLAVOR =	python3

INCL_DIR =	${MODPY_INCDIR:S/${LOCALBASE}\///}
SUBST_VARS +=	INCL_DIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}greenlet
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/${MODPY_PY_PREFIX}greenlet

.include <bsd.port.mk>
