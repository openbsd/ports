# $OpenBSD: Makefile,v 1.27 2020/07/07 13:01:45 kn Exp $

GH_ACCOUNT =		aajanki
GH_PROJECT =		yle-dl
GH_TAGNAME =		20200628
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
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-configargparse${MODPY_FLAVOR} \
			devel/py-future${MODPY_FLAVOR} \
			graphics/ffmpeg \
			www/py-requests${MODPY_FLAVOR} \
			net/wget \
			textproc/py-lxml${MODPY_FLAVOR} \
			converters/py-mini-amf${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

TEST_IS_INTERACTIVE =	needs network access to download streams
TEST_ENV =		HOME=/tmp

.include <bsd.port.mk>
