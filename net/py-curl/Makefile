# $OpenBSD: Makefile,v 1.10 2003/07/31 19:11:59 sturm Exp $

COMMENT=	"python interface to cURL library"

VERSION=	7.9.8.4
DISTNAME=	pycurl-${VERSION}
PKGNAME=	py-curl-${VERSION}
CATEGORIES=    	net

HOMEPAGE=	http://pycurl.sourceforge.net/
MASTER_SITES=	${HOMEPAGE}download/ \
		${HOMEPAGE}download/00-OLD-VERSIONS/

MAINTAINER=	Shell Hung <shell@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	python

LIB_DEPENDS=	curl.2.2::net/curl

NO_REGRESS=	Yes

.include <bsd.port.mk>
