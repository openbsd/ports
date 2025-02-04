COMMENT=		Natural Language ToolKit

MODPY_DISTV =		3.9.1
DISTNAME=		nltk-${MODPY_DISTV}
PKGNAME=		py-nltk-${MODPY_DISTV}
CATEGORIES=		textproc

EPOCH =			0

HOMEPAGE=		https://www.nltk.org/

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

# Need NLTK data for tests (run 'python3 -m nltk.downloader all'
# and copy to ${WRKDIR}/nltk_data).
TEST_DEPENDS=		devel/pylint
PORTHOME=		${WRKDIR}

.include <bsd.port.mk>
