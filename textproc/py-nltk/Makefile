# $OpenBSD: Makefile,v 1.9 2013/01/04 11:27:15 benoit Exp $

COMMENT=		Natural Language ToolKit

MODPY_EGG_VERSION=	2.0.4
DISTNAME=		nltk-${MODPY_EGG_VERSION}
PKGNAME=		py-nltk-${MODPY_EGG_VERSION}
CATEGORIES=		textproc

HOMEPAGE=		http://www.nltk.org/

# Apache License, Version 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=n/nltk/}

MODULES=		lang/python

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS=		textproc/py-yaml
RUN_DEPENDS=		graphics/py-matplotlib \
			math/prover9/p9m4 \
			textproc/py-yaml

NO_REGRESS=		Yes

.include <bsd.port.mk>
