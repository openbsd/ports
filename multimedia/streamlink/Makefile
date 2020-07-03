# $OpenBSD: Makefile,v 1.25 2020/07/03 21:12:59 sthen Exp $

MODPY_EGG_VERSION =	1.4.1
COMMENT =	pipe video streams into a video player
DISTNAME =	streamlink-${MODPY_EGG_VERSION}
CATEGORIES =	multimedia net
REVISION =	0

HOMEPAGE =	https://streamlink.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-iso3166${MODPY_FLAVOR} \
		devel/py-iso639${MODPY_FLAVOR} \
		devel/py-isodate${MODPY_FLAVOR} \
		graphics/ffmpeg \
		net/py-socks${MODPY_FLAVOR} \
		net/py-websocket-client${MODPY_FLAVOR} \
		net/rtmpdump \
		security/py-cryptodome${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-country${MODPY_FLAVOR} \
		devel/py-freezegun${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR} \
		www/py-requests-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
