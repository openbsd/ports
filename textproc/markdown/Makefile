# $OpenBSD: Makefile,v 1.7 2009/06/01 07:15:03 wcmaier Exp $

COMMENT=		text-to-HTML conversion tool

MODPY_EGG_VERSION=	2.0.1
DISTNAME=		Markdown-${MODPY_EGG_VERSION}
PKGNAME=		markdown-${MODPY_EGG_VERSION}
CATEGORIES=		textproc

HOMEPAGE=		http://www.freewisdom.org/projects/python-markdown/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

MASTER_SITES=	http://pypi.python.org/packages/source/M/Markdown/
NO_REGRESS=	Yes

.include <bsd.port.mk>
