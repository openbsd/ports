# $OpenBSD: Makefile,v 1.13 2015/06/27 14:09:57 jasper Exp $

COMMENT=		Natural Language ToolKit

MODPY_EGG_VERSION=	3.0.3
DISTNAME=		nltk-${MODPY_EGG_VERSION}
PKGNAME=		py-nltk-${MODPY_EGG_VERSION}
CATEGORIES=		textproc

EPOCH =			0

HOMEPAGE=		http://www.nltk.org/

# Apache License, Version 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS=		textproc/py-yaml
RUN_DEPENDS=		graphics/py-matplotlib \
			math/prover9/p9m4 \
			textproc/py-yaml

NO_TEST=		Yes

.include <bsd.port.mk>
