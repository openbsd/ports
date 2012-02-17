# $OpenBSD: Makefile,v 1.25 2012/02/17 09:32:18 mpi Exp $

SHARED_ONLY =		Yes

COMMENT =		cryptographic tools for Python

MODPY_EGG_VERSION =	2.5
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

FLAVORS =	python3
FLAVOR ?=

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
.if ${FLAVOR:L:Mpython3}
	mv ${PREFIX}/share/doc/py-crypto ${PREFIX}/share/doc/py3-crypto
.endif

do-regress: fake
	cd ${WRKSRC} && ${MAKE_ENV} \
	PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
