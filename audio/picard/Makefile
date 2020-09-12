# $OpenBSD: Makefile,v 1.36 2020/09/12 22:10:09 kmos Exp $

COMMENT =	automatic audio files tagger using the MusicBrainz database

MODPY_EGG_VERSION =	2.4.2
DISTNAME =		picard-${MODPY_EGG_VERSION}

CATEGORIES =		audio

HOMEPAGE =		https://picard.musicbrainz.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODPY_WANTLIB} pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

# msgfmt
BUILD_DEPENDS =		devel/gettext,-tools

RUN_DEPENDS =		audio/chromaprint \
			devel/py-dateutil${MODPY_FLAVOR} \
			audio/py-discid${MODPY_FLAVOR} \
			audio/py-mutagen${MODPY_FLAVOR} \
			devel/desktop-file-utils \
			x11/gtk+3,-guic \
			x11/py-qt5${MODPY_FLAVOR}

.include <bsd.port.mk>
