# $OpenBSD: Makefile,v 1.23 2011/11/04 13:36:16 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		cryptographic tools for Python

MODPY_EGG_VERSION =	2.3
DISTNAME =		pycrypto-${MODPY_EGG_VERSION}
PKGNAME =		py-crypto-${MODPY_EGG_VERSION}
CATEGORIES =    	security devel

REVISION =		0

HOMEPAGE =		https://www.dlitz.net/software/pycrypto/

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# Public domain (patented algorithms removed by patch)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://ftp.dlitz.net/pub/dlitz/crypto/pycrypto/

MODULES =	lang/python
LIB_DEPENDS =	${MODPY_LIB_DEPENDS}
WANTLIB =	${MODPY_WANTLIB}

BUILD_DEPENDS =	devel/gmp

DOCSDIR =	${PREFIX}/share/doc/py-crypto

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/setup.py
	rm ${WRKSRC}/lib/Crypto/SelfTest/Cipher/test_ARC2.py
	rm ${WRKSRC}/lib/Crypto/SelfTest/Hash/test_MD2.py

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}

do-regress: fake
	cd ${WRKSRC} && ${MAKE_ENV} \
	PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
