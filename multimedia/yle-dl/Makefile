# $OpenBSD: Makefile,v 1.30 2021/09/14 19:53:00 fcambus Exp $

GH_ACCOUNT =		aajanki
GH_PROJECT =		yle-dl
GH_TAGNAME =		20210808
MODPY_EGG_VERSION =	${GH_TAGNAME}

COMMENT =		download videos from YLE Areena

CATEGORIES =		multimedia

HOMEPAGE =		https://aajanki.github.io/yle-dl/
MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-configargparse${MODPY_FLAVOR} \
			graphics/ffmpeg \
			www/py-requests${MODPY_FLAVOR} \
			net/wget \
			textproc/py-lxml${MODPY_FLAVOR} \

TEST_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

TEST_IS_INTERACTIVE =	needs network access to download streams
TEST_ENV =		HOME=/tmp

.include <bsd.port.mk>
