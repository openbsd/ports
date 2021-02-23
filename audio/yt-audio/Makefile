# $OpenBSD: Makefile,v 1.5 2021/02/23 19:39:10 sthen Exp $

COMMENT =		youtube-dl wrapper to manage youtube audio

MODPY_EGG_VERSION =	0.1
DISTNAME =		yt-audio-${MODPY_EGG_VERSION}
CATEGORIES =		audio
REVISION =		1

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
