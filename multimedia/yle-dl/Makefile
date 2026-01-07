COMMENT =		download videos from YLE Areena

# GH_* doesn't handle tags containing /
MODPY_DISTV =		20250730
PKGNAME =		yle-dl-${MODPY_DISTV}
DISTNAME =		yle-dl-releases-${MODPY_DISTV}
DISTFILES =		${DISTNAME}{${MODPY_DISTV}}.tar.gz
SITES =			https://github.com/aajanki/yle-dl/archive/refs/tags/releases/

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
