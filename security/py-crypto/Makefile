# $OpenBSD: Makefile,v 1.2 2004/08/03 21:31:07 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"cryptographic tools for Python"

VERSION=	1.9a6
DISTNAME=	pycrypto-${VERSION}
PKGNAME=	py-crypto-${VERSION}
CATEGORIES=    	security devel

HOMEPAGE=	http://www.amk.ca/python/code/crypto.html

MAINTAINER=	Jason Ish <ish@openbsd.org>

# Public domain.
PERMIT_PACKAGE_CDROM=	"patented algorithm"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"patented algorithm"
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
