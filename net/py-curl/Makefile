# $OpenBSD: Makefile,v 1.24 2007/09/15 22:36:58 merdely Exp $

SHARED_ONLY=	Yes

COMMENT=	Python interface to cURL library

VERSION=	7.15.5.1
DISTNAME=	pycurl-${VERSION}
PKGNAME=	py-curl-${VERSION}p0
CATEGORIES=    	net

HOMEPAGE=	http://pycurl.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto idn ssl z

MASTER_SITES=	${HOMEPAGE}download/ \
		${HOMEPAGE}download/00-OLD-VERSIONS/

MODULES=	lang/python

LIB_DEPENDS=	curl.>=5::net/curl

do-regress: fake
	@cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_getinfo.py

.include <bsd.port.mk>
