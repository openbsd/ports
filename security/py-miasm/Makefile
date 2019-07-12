# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:34 sthen Exp $

BROKEN-i386 =	uint128_t

COMMENT =	reverse engineering framework in Python

MODPY_EGG_VERSION = 2.0.1.1
DISTNAME =	miasm-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

GH_ACCOUNT =	cea-sec
GH_PROJECT =	miasm
GH_COMMIT =	f7157afaccd897fb00eeb97817d124790f0ede67

CATEGORIES =	security devel

HOMEPAGE =	https://github.com/cea-sec/miasm

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

WANTLIB += pthread ${MODPY_WANTLIB}

RUN_DEPENDS =	security/py-elfesteem \
		devel/py-llvmlite \
		devel/py-parsing

TEST_DEPENDS =	devel/py-cparser

post-build:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKSRC}/example

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/${MODPY_PY_PREFIX}miasm
	cp -r ${WRKSRC}/example ${PREFIX}/share/${MODPY_PY_PREFIX}miasm/

do-test:
	cd ${WRKSRC}/test && ${MODPY_BIN} ./test_all.py -m

.include <bsd.port.mk>
