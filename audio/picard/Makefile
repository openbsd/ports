COMMENT =	automatic audio files tagger using the MusicBrainz database

MODPY_DISTV =	2.12.3
DISTNAME =		picard-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		audio

HOMEPAGE =		https://picard.musicbrainz.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# msgfmt
BUILD_DEPENDS =		devel/gettext,-tools

RUN_DEPENDS =		audio/chromaprint \
			devel/py-dateutil \
			audio/py-discid \
			audio/py-mutagen \
			devel/desktop-file-utils \
			devel/py-fasteners \
			textproc/py-charset-normalizer \
			textproc/py-markdown \
			textproc/py-yaml \
			x11/gtk+4,-guic \
			x11/py-qt5

.include <bsd.port.mk>
