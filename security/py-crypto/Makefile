# $OpenBSD: Makefile,v 1.24 2011/12/28 09:56:38 mpi Exp $

SHARED_ONLY =		Yes

COMMENT =		cryptographic tools for Python

MODPY_EGG_VERSION =	2.4.1
DISTNAME =		pycrypto-${MODPY_EGG_VERSION}
PKGNAME =		py-crypto-${MODPY_EGG_VERSION}
CATEGORIES =    	security devel

HOMEPAGE =		https://www.dlitz.net/software/pycrypto/

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# Public domain (patented algorithms removed by patch)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://ftp.dlitz.net/pub/dlitz/crypto/pycrypto/

MODULES =	lang/python
LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		devel/gmp
WANTLIB =	${MODPY_WANTLIB} gmp

# XXX Don't set CONFIGURE_STYLE=simple otherwise python.port.mk will
# not define do-build and do-install 
CONFIGURE_ARGS =	CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CFLAGS += 		-I${LOCALBASE}/include

DOCSDIR =	${PREFIX}/share/doc/py-crypto

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/setup.py
	rm ${WRKSRC}/lib/Crypto/SelfTest/Cipher/test_ARC2.py
	rm ${WRKSRC}/lib/Crypto/SelfTest/Hash/test_MD2.py

do-configure:
	${MODSIMPLE_configure}

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}

do-regress: fake
	cd ${WRKSRC} && ${MAKE_ENV} \
	PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
