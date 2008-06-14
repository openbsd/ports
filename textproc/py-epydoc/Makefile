# $OpenBSD: Makefile,v 1.1.1.1 2008/06/14 21:54:12 eric Exp $

COMMENT=		python module API documentation generation tool

MODPY_EGG_VERSION=	3.0.1
DISTNAME=		epydoc-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		textproc devel

HOMEPAGE=		http://epydoc.sourceforge.net

MAINTAINER=		Jason Meltzer <meltzer@strangeresearch.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=epydoc/}

MODULES=		lang/python

NO_REGRESS=		Yes
PKG_ARCH=		*

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/* ${PREFIX}/man/man1	

.include <bsd.port.mk>
