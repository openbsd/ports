# $OpenBSD: Makefile,v 1.11 2011/06/08 18:09:58 jasper Exp $

COMMENT=		text-to-HTML conversion tool

MODPY_EGG_VERSION=	2.0.3
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

MODPY_ADJ_FILES= markdown/extensions/headerid.py \
		markdown/extensions/codehilite.py \
		markdown/extensions/meta.py

.include <bsd.port.mk>
