# $OpenBSD: Makefile,v 1.22 2010/10/09 10:26:00 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	OpenSSL Wrappers for Python

VERSION=	0.6.1
DISTNAME=	POW-${VERSION}
PKGNAME=	py-sslwrapper-${VERSION}
REVISION=	4
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

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{setup.py,POW.c}

.include <bsd.port.mk>
