# $OpenBSD: Makefile,v 1.11 2021/11/02 00:00:24 sthen Exp $

COMMENT= generate SCons/Makefiles from platform-independent input

GH_ACCOUNT=	chromium
GH_PROJECT=	gyp
GH_COMMIT=	caa60026e223fc501e8b337fd5086ece4028b1c6

DISTNAME=	gyp-0.20200512
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://bugs.chromium.org/p/gyp/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS=	Yes
TEST_DEPENDS=	devel/ninja

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gyp

do-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MODPY_BIN} gyptest.py -a

.include <bsd.port.mk>
