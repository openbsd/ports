# $OpenBSD: Makefile,v 1.1.1.1 2009/11/13 12:17:08 jasper Exp $

COMMENT=		Natural Language ToolKit

MODPY_EGG_VERSION=	2.0b7
DISTNAME=		nltk-${MODPY_EGG_VERSION}
PKGNAME=		py-nltk-${MODPY_EGG_VERSION}
CATEGORIES=		textproc

HOMEPAGE=		http://www.nltk.org/

# Apache License, Version 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://nltk.googlecode.com/files/
EXTRACT_SUFX=		.zip

MODULES=		lang/python

RUN_DEPENDS=		::graphics/py-matplotlib \
			::textproc/py-yaml

.include <bsd.port.mk>
