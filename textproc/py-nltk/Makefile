# $OpenBSD: Makefile,v 1.5 2011/03/14 09:15:34 sthen Exp $

COMMENT=		Natural Language ToolKit

MODPY_EGG_VERSION=	2.0b9
DISTNAME=		nltk-${MODPY_EGG_VERSION}
PKGNAME=		py-nltk-${MODPY_EGG_VERSION}
REVISION=		1
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

BUILD_DEPENDS=		textproc/py-yaml
RUN_DEPENDS=		graphics/py-matplotlib \
			textproc/py-yaml

NO_REGRESS=		Yes

.include <bsd.port.mk>
