MODPY_DISTV =	6.5.1
COMMENT =	pipe video streams into a video player
DISTNAME =	streamlink-${MODPY_DISTV}
CATEGORIES =	multimedia net
REVISION =	1

HOMEPAGE =	https://streamlink.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
# uses own in-tree backend which wraps setuptools
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-certifi \
		devel/py-isodate \
		textproc/py-lxml<6 \
		devel/py-country \
		security/py-cryptodome<4 \
		net/py-socks \
		www/py-requests<3 \
		devel/py-trio<1 \
		net/py-trio-websocket<1 \
		devel/py-typing-extensions \
		www/py-urllib3<3 \
		net/py-websocket-client<2
RUN_DEPENDS +=	graphics/ffmpeg

TEST_DEPENDS =	devel/py-freezegun \
		devel/py-mock \
		devel/py-test-asyncio \
		devel/py-test-cov \
		www/py-requests-mock

.include <bsd.port.mk>
