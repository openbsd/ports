# $OpenBSD: Makefile,v 1.12 2018/06/07 05:50:27 bcallah Exp $

COMMENT =	pipe video streams into a video player
CATEGORIES =	multimedia net

GH_ACCOUNT =	streamlink
GH_PROJECT =	streamlink
GH_TAGNAME =	0.13.0

HOMEPAGE =	https://streamlink.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes
MODPY_EGG_VERSION =	${GH_TAGNAME}

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
		www/py-requests-mock${MODPY_FLAVOR} \
		${RUN_DEPENDS}

.include <bsd.port.mk>
