# $OpenBSD: Makefile,v 1.9 2015/02/16 22:57:13 naddy Exp $

COMMENT=		python module API documentation generation tool

MODPY_EGG_VERSION=	3.0.1
DISTNAME=		epydoc-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		3

CATEGORIES=		textproc devel

HOMEPAGE=		http://epydoc.sourceforge.net

MAINTAINER=		Jason Meltzer <meltzer@strangeresearch.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=epydoc/}

MODULES=		lang/python

NO_TEST=		Yes
PKG_ARCH=		*

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/* ${PREFIX}/man/man1	

.include <bsd.port.mk>
