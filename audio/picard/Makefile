COMMENT=	automatic audio files tagger using the MusicBrainz database

MODPY_DISTV=	3.0.1
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

# from pyproject.toml
RUN_DEPENDS=	audio/py-discid \
		textproc/py-markdown \
		audio/py-mutagen \
		www/py-jwt \
		x11/py-qt6 \
		textproc/py-yaml \
		textproc/py-charset-normalizer \
		devel/libgit2/py-git2 \
		textproc/py-tomlkit

# others
RUN_DEPENDS +=	audio/chromaprint \
		devel/desktop-file-utils \
		x11/gtk+4,-guic

# ??		devel/py-dateutil devel/py-fasteners

.include <bsd.port.mk>
