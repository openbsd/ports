# $OpenBSD: Makefile,v 1.8 2003/07/31 19:12:00 sturm Exp $

COMMENT=	"OpenSSL Wrappers for Python"

VERSION=	0.6.1
DISTNAME=	POW-${VERSION}
PKGNAME=	py-sslwrapper-${VERSION}
CATEGORIES=    	security devel

HOMEPAGE=	http://www.sf.net/projects/pow/

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pow/}

MODULES=	python

NO_REGRESS=	Yes

post-patch:
	@perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' ${WRKSRC}/setup.py

.include <bsd.port.mk>
