# $OpenBSD: Makefile,v 1.9 2010/08/30 21:47:15 jasper Exp $

COMMENT=		text-to-HTML conversion tool

MODPY_EGG_VERSION=	2.0.1
DISTNAME=		Markdown-${MODPY_EGG_VERSION}
PKGNAME=		markdown-${MODPY_EGG_VERSION}
REVISION=		0
CATEGORIES=		textproc

HOMEPAGE=		http://www.freewisdom.org/projects/python-markdown/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

MASTER_SITES=	${MASTER_SITE_PYPI:=M/Markdown/}
NO_REGRESS=	Yes

.include <bsd.port.mk>
