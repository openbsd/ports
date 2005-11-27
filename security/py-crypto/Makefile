# $OpenBSD: Makefile,v 1.4 2005/11/27 15:20:42 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"cryptographic tools for Python"

VERSION=	2.0.1
DISTNAME=	pycrypto-${VERSION}
PKGNAME=	py-crypto-${VERSION}
CATEGORIES=    	security devel

HOMEPAGE=	http://www.amk.ca/python/code/crypto.html

MAINTAINER=	Jason Ish <ish@openbsd.org>

# Public domain (patented algoritms removed by patch)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.amk.ca/files/python/crypto/

MODULES=	lang/python

DOCSDIR=	${PREFIX}/share/doc/py-crypto

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}

do-regress: fake
	cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} test.py

.include <bsd.port.mk>
