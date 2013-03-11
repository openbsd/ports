# $OpenBSD: Makefile,v 1.35 2013/03/11 11:35:55 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Python interface to cURL library

MODPY_EGG_VERSION=	7.19.0
DISTNAME=	pycurl-${MODPY_EGG_VERSION}
PKGNAME=	py-curl-${MODPY_EGG_VERSION}
REVISION=	3
CATEGORIES=    	net

HOMEPAGE=	http://pycurl.sourceforge.net/

# dual: LGPL or MIT-like
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}download/ \
		${HOMEPAGE}download/00-OLD-VERSIONS/

MODULES=	lang/python

LIB_DEPENDS=	net/curl
WANTLIB=	crypto idn ssl z curl>=12

do-test: fake
	@cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_getinfo.py

.include <bsd.port.mk>
