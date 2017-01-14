# $OpenBSD: Makefile,v 1.19 2017/01/14 18:03:42 shadchin Exp $

COMMENT=		Natural Language ToolKit

MODPY_EGG_VERSION =	3.2.2
DISTNAME=		nltk-${MODPY_EGG_VERSION}
PKGNAME=		py-nltk-${MODPY_EGG_VERSION}
CATEGORIES=		textproc

EPOCH =			0

HOMEPAGE=		http://www.nltk.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# Apache License, Version 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/prover9/p9m4 \
			textproc/py-yaml${MODPY_FLAVOR}
TEST_DEPENDS=		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR} \
			devel/py-parsing${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

# Need NLTK data for some tests (run python -m nltk.downloader)
do-test:
	cd ${WRKSRC}; ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} nltk

.include <bsd.port.mk>
