COMMENT =		download videos from YLE Areena

MODPY_DISTV =		20250730
GH_ACCOUNT =		aajanki
GH_PROJECT =		yle-dl
GH_TAGNAME =		releases/${MODPY_DISTV}
DISTNAME =		yle-dl-${MODPY_DISTV}

CATEGORIES =		multimedia

HOMEPAGE =		https://aajanki.github.io/yle-dl/

MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		flit_core

RUN_DEPENDS =		devel/py-attrs \
			devel/py-configargparse \
			graphics/ffmpeg \
			www/py-requests \
			net/wget \
			textproc/py-lxml \
			sysutils/py-psutil \
			textproc/py-lxml

# tests need network access to download streams
PORTHOME =		${WRKDIR}
TEST_DEPENDS =		devel/py-test-runner

.include <bsd.port.mk>
