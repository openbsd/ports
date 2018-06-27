# $OpenBSD: Makefile,v 1.1.1.1 2018/06/27 14:32:23 rpointel Exp $

COMMENT =	reverse engineering framework in Python

MODPY_EGG_VERSION = 2.0
DISTNAME =	miasm-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

GH_ACCOUNT =	cea-sec
GH_PROJECT =	miasm
GH_COMMIT =	0adddb12a7410c4bbdd6ee79252e9bf05ca22818

CATEGORIES =	security devel

HOMEPAGE =	https://github.com/cea-sec/miasm

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

WANTLIB += pthread ${MODPY_WANTLIB}

RUN_DEPENDS =	security/py-elfesteem \
		devel/py-llvmlite \
		devel/py-parsing

TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-cparser

post-build:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKSRC}/example

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/${MODPY_PY_PREFIX}miasm
	cp -r ${WRKSRC}/example ${PREFIX}/share/${MODPY_PY_PREFIX}miasm/

do-test:
	cd ${WRKSRC}/test && ${MODPY_BIN} ./test_all.py -m

.include <bsd.port.mk>
