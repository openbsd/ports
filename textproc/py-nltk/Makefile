COMMENT=		Natural Language ToolKit

MODPY_DISTV =	3.8.1
DISTNAME=		nltk-${MODPY_DISTV}
EXTRACT_SUFX=		.zip
PKGNAME=		py-nltk-${MODPY_DISTV}
CATEGORIES=		textproc
REVISION=		1

EPOCH =			0

HOMEPAGE=		http://www.nltk.org/

# Apache License, Version 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS=		devel/py-click \
			devel/py-parsing \
			devel/py-regex \
			devel/py-tqdm \
			graphics/py-matplotlib \
			math/prover9/p9m4 \
			sysutils/py-joblib \
			textproc/py-yaml

TEST_DEPENDS=		devel/pylint

# Need NLTK data for some tests (run python -m nltk.downloader)
do-test:
	cd ${WRKSRC}; ${LOCALBASE}/bin/nosetests nltk

.include <bsd.port.mk>
