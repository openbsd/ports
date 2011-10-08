# $OpenBSD: Makefile,v 1.20 2011/10/08 14:56:34 mpi Exp $

SHARED_ONLY =		Yes

COMMENT =		cryptographic tools for Python

MODPY_EGG_VERSION =	2.3
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
LIB_DEPENDS =	devel/gmp
WANTLIB =	gmp>=6

DOCSDIR =	${PREFIX}/share/doc/py-crypto

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}

do-regress: fake
	cd ${WRKSRC} && ${MAKE_ENV} \
	PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
