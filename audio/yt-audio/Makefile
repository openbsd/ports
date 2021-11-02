# $OpenBSD: Makefile,v 1.6 2021/11/02 00:00:14 sthen Exp $

COMMENT =		youtube-dl wrapper to manage youtube audio

MODPY_EGG_VERSION =	0.1
DISTNAME =		yt-audio-${MODPY_EGG_VERSION}
CATEGORIES =		audio
REVISION =		2

MAINTAINER =		Paul Irofti <paul@irofti.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		www/youtube-dl \
			graphics/ffmpeg

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
