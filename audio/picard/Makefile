COMMENT=	automatic audio files tagger using the MusicBrainz database

MODPY_DISTV=	2.13.1
DISTNAME=	picard-${MODPY_DISTV}

CATEGORIES=	audio

HOMEPAGE=	https://picard.musicbrainz.org/

# GPLv2+
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# msgfmt
BUILD_DEPENDS=	devel/gettext,-tools

RUN_DEPENDS=	audio/chromaprint \
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
