# $OpenBSD: Makefile,v 1.22 2019/05/13 19:03:53 danj Exp $

COMMENT=		Natural Language ToolKit

MODPY_EGG_VERSION =	3.2.4
DISTNAME=		nltk-${MODPY_EGG_VERSION}
PKGNAME=		py-nltk-${MODPY_EGG_VERSION}
CATEGORIES=		textproc
REVISION=		1

EPOCH =			0

HOMEPAGE=		http://www.nltk.org/

# Apache License, Version 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
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
