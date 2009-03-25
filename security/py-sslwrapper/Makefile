# $OpenBSD: Makefile,v 1.20 2009/03/25 13:52:31 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	OpenSSL Wrappers for Python

VERSION=	0.6.1
DISTNAME=	POW-${VERSION}
PKGNAME=	py-sslwrapper-${VERSION}p2
CATEGORIES=    	security devel

HOMEPAGE=	http://www.sourceforge.net/projects/pow/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pow/}

MODULES=	lang/python

NO_REGRESS=	Yes

pre-build:
	@perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' ${WRKSRC}/setup.py
	@perl -pi -e 's,%%MODPY_VERSION%%,${MODPY_VERSION},g' ${WRKSRC}/POW.c

.include <bsd.port.mk>
