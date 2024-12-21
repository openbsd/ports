GH_ACCOUNT =		aajanki
GH_PROJECT =		yle-dl
GH_TAGNAME =		20220704
MODPY_DISTV =	${GH_TAGNAME}
REVISION =		3

COMMENT =		download videos from YLE Areena

CATEGORIES =		multimedia

HOMEPAGE =		https://aajanki.github.io/yle-dl/
MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-attrs \
			devel/py-configargparse \
			graphics/ffmpeg \
			www/py-requests \
			net/wget \
			textproc/py-lxml

TEST_DEPENDS =		devel/py-test-runner

TEST_IS_INTERACTIVE =	needs network access to download streams
TEST_ENV =		HOME=/tmp

.include <bsd.port.mk>
