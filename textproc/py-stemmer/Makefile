# $OpenBSD: Makefile,v 1.8 2020/07/03 21:13:16 sthen Exp $

COMMENT =		snowball stemming algorithms, for information retrieval

MODPY_EGG_VERSION =	1.3.0
REVISION =		5
DISTNAME =		PyStemmer-${MODPY_EGG_VERSION}
PKGNAME =		py-stemmer-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

# MIT/BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

# distributed src/Stemmer.c fails with py37; if cython is present it
# will be regenerated at build time
BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR}

pre-test:
	@${MODPY_CMD} build_ext --inplace

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} runtests.py

.include <bsd.port.mk>
