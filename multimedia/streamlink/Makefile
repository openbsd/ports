MODPY_EGG_VERSION =	6.5.1
COMMENT =	pipe video streams into a video player
DISTNAME =	streamlink-${MODPY_EGG_VERSION}
CATEGORIES =	multimedia net

HOMEPAGE =	https://streamlink.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-certifi${MODPY_FLAVOR} \
		devel/py-isodate${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR}<6 \
		devel/py-country${MODPY_FLAVOR} \
		security/py-cryptodome${MODPY_FLAVOR}<4 \
		net/py-socks${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}<3 \
		devel/py-trio${MODPY_FLAVOR}<1 \
		net/py-trio-websocket${MODPY_FLAVOR}<1 \
		devel/py-typing-extensions${MODPY_FLAVOR} \
		www/py-urllib3${MODPY_FLAVOR}<3 \
		net/py-websocket-client${MODPY_FLAVOR}<2
RUN_DEPENDS +=	graphics/ffmpeg

TEST_DEPENDS =	devel/py-freezegun${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		devel/py-test-asyncio${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		www/py-requests-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
