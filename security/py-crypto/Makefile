# $OpenBSD: Makefile,v 1.39 2017/01/03 19:26:14 landry Exp $

COMMENT =		cryptographic tools for Python

MODPY_EGG_VERSION =	2.6.1
REVISION =		3
DISTNAME =		pycrypto-${MODPY_EGG_VERSION}
PKGNAME =		py-crypto-${MODPY_EGG_VERSION}
CATEGORIES =		security devel

HOMEPAGE =		https://www.dlitz.net/software/pycrypto/

# Public domain (patented algorithms removed by patch)
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://ftp.dlitz.net/pub/dlitz/crypto/pycrypto/

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		devel/gmp
WANTLIB =	${MODPY_WANTLIB} gmp pthread

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DOCSDIR =	${PREFIX}/share/doc/${MODPY_PY_PREFIX}crypto

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/setup.py
	rm ${WRKSRC}/lib/Crypto/SelfTest/Cipher/test_ARC2.py
	rm ${WRKSRC}/lib/Crypto/SelfTest/Hash/test_MD2.py

do-build:
	@${MODPY_BUILD_TARGET}

do-install:
	@${MODPY_INSTALL_TARGET}
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}

do-test: fake
	cd ${WRKSRC} && ${MAKE_ENV} \
	PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
