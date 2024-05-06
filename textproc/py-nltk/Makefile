COMMENT=		Natural Language ToolKit

MODPY_EGG_VERSION =	3.8.1
DISTNAME=		nltk-${MODPY_EGG_VERSION}
EXTRACT_SUFX=		.zip
PKGNAME=		py-nltk-${MODPY_EGG_VERSION}
CATEGORIES=		textproc
REVISION=		0

EPOCH =			0

HOMEPAGE=		http://www.nltk.org/

# Apache License, Version 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS=		devel/py-click${MODPY_FLAVOR} \
			devel/py-parsing${MODPY_FLAVOR} \
			devel/py-regex${MODPY_FLAVOR} \
			devel/py-tqdm${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/prover9/p9m4 \
			sysutils/py-joblib${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

TEST_DEPENDS=		devel/pylint${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

# Need NLTK data for some tests (run python -m nltk.downloader)
do-test:
	cd ${WRKSRC}; ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} nltk

.include <bsd.port.mk>
