# $OpenBSD: Makefile,v 1.12 2004/04/20 13:06:27 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"python interface to cURL library"

VERSION=	7.11.1
DISTNAME=	pycurl-${VERSION}
PKGNAME=	py-curl-${VERSION}
CATEGORIES=    	net

HOMEPAGE=	http://pycurl.sourceforge.net/

MAINTAINER=	Shell Hung <shell@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/ \
		${HOMEPAGE}download/00-OLD-VERSIONS/

MODULES=	python

LIB_DEPENDS=	curl.2.2::net/curl

do-regress: fake
	@cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_getinfo.py

.include <bsd.port.mk>
