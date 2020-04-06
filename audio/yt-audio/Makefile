# $OpenBSD: Makefile,v 1.3 2020/04/06 08:48:06 pirofti Exp $

COMMENT =		youtube-dl wrapper to manage youtube audio

MODPY_EGG_VERSION =	0.1
DISTNAME =		yt-audio-${MODPY_EGG_VERSION}
CATEGORIES =		audio
REVISION =		0

MAINTAINER =		Paul Irofti <paul@irofti.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		www/youtube-dl \
			graphics/ffmpeg

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
