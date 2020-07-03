# $OpenBSD: Makefile,v 1.25 2020/07/03 21:13:14 sthen Exp $

COMMENT=		Natural Language ToolKit

MODPY_EGG_VERSION =	3.2.4
DISTNAME=		nltk-${MODPY_EGG_VERSION}
PKGNAME=		py-nltk-${MODPY_EGG_VERSION}
CATEGORIES=		textproc
REVISION=		2

EPOCH =			0

HOMEPAGE=		http://www.nltk.org/

# Apache License, Version 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/prover9/p9m4 \
			textproc/py-yaml${MODPY_FLAVOR}
TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR} \
			devel/py-parsing${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

# Need NLTK data for some tests (run python -m nltk.downloader)
do-test:
	cd ${WRKSRC}; ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} nltk

.include <bsd.port.mk>
