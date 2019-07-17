# $OpenBSD: Makefile,v 1.12 2019/07/17 14:39:43 danj Exp $

COMMENT=		python module API documentation generation tool

MODPY_EGG_VERSION=	3.0.1
DISTNAME=		epydoc-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		4

CATEGORIES=		textproc devel

HOMEPAGE=		http://epydoc.sourceforge.net

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=epydoc/}

MODULES=		lang/python

NO_TEST=		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/* ${PREFIX}/man/man1	

.include <bsd.port.mk>
