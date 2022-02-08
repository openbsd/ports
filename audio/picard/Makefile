# $OpenBSD: Makefile,v 1.47 2022/02/08 12:34:29 sthen Exp $

COMMENT =	automatic audio files tagger using the MusicBrainz database

MODPY_EGG_VERSION =	2.7.3
DISTNAME =		picard-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		audio

HOMEPAGE =		https://picard.musicbrainz.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODPY_WANTLIB} pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

# msgfmt
BUILD_DEPENDS =		devel/gettext,-tools

RUN_DEPENDS =		audio/chromaprint \
			devel/py-dateutil${MODPY_FLAVOR} \
			audio/py-discid${MODPY_FLAVOR} \
			audio/py-mutagen${MODPY_FLAVOR} \
			devel/desktop-file-utils \
			devel/py-fasteners${MODPY_FLAVOR} \
			textproc/py-markdown${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			x11/gtk+3,-guic \
			x11/py-qt5${MODPY_FLAVOR}

.include <bsd.port.mk>
