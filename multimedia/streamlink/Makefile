# $OpenBSD: Makefile,v 1.3 2017/09/13 19:59:09 bcallah Exp $

COMMENT =	pipe video streams into a video player
CATEGORIES =	multimedia net

GH_ACCOUNT =	streamlink
GH_PROJECT =	streamlink
GH_TAGNAME =	0.8.1

HOMEPAGE =	https://streamlink.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes
MODPY_EGG_VERSION =	${GH_TAGNAME}

RUN_DEPENDS =	devel/py-iso3166,${MODPY_FLAVOR} \
		devel/py-iso639,${MODPY_FLAVOR} \
		graphics/ffmpeg \
		net/rtmpdump \
		security/py-crypto,${MODPY_FLAVOR} \
		www/py-requests,${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-test,${MODPY_FLAVOR} \
		devel/py-mock,${MODPY_FLAVOR} \
		devel/py-country,${MODPY_FLAVOR} \
		net/py-socks,${MODPY_FLAVOR} \
		net/py-websocket-client,${MODPY_FLAVOR}

.include <bsd.port.mk>
