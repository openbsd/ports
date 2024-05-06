GH_ACCOUNT =		aajanki
GH_PROJECT =		yle-dl
GH_TAGNAME =		20220704
MODPY_EGG_VERSION =	${GH_TAGNAME}
REVISION =		2

COMMENT =		download videos from YLE Areena

CATEGORIES =		multimedia

HOMEPAGE =		https://aajanki.github.io/yle-dl/
MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-configargparse${MODPY_FLAVOR} \
			graphics/ffmpeg \
			www/py-requests${MODPY_FLAVOR} \
			net/wget \
			textproc/py-lxml${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

TEST_IS_INTERACTIVE =	needs network access to download streams
TEST_ENV =		HOME=/tmp

.include <bsd.port.mk>
