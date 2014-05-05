# $OpenBSD: Makefile,v 1.16 2014/05/05 07:55:50 brad Exp $

COMMENT =		automatic audio files tagger using the MusicBrainz database

MODPY_EGG_VERSION =	0.16
DISTNAME =		picard-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		audio

HOMEPAGE =		http://musicbrainz.org/doc/Picard_Tagger

MAINTAINER =		Amaury Gauthier <amaury.gauthier@etu.unilim.fr>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m stdc++ avcodec avformat ofa ${MODPY_WANTLIB}

MASTER_SITES =		http://ftp.musicbrainz.org/pub/musicbrainz/picard/ \
			ftp://ftp.musicbrainz.org/pub/musicbrainz/picard/

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
# --single-version-externally-managed option used by MODPY doesn't exist
MODPY_DISTUTILS_INSTALL=install --prefix=${LOCALBASE} --root=${DESTDIR}

# msgfmt
BUILD_DEPENDS =		devel/gettext

LIB_DEPENDS =		audio/libofa \
			graphics/ffmpeg

RUN_DEPENDS =		x11/py-qt4>=4.1 \
			audio/py-mutagen>=1.9 \
			devel/desktop-file-utils

TEST_DEPENDS =		${BASE_PKGPATH}

PLUGINS_DIRS =		lastfm \
			lastfmplus \
			replaygain
PLUGINS =		classicdiscnumber.py \
			coverart.py \
			cuesheet.py \
			discnumber.py \
			featartist.py \
			featartistsintitles.py \
			lastfm/__init__.py \
			lastfm/options_lastfm.ui \
			lastfm/ui_options_lastfm.py \
			lastfmplus/__init__.py \
			lastfmplus/ui_options_lastfm.py \
			no_release.py \
			open_in_gui.py \
			release_type.py \
			replaygain/__init__.py \
			replaygain/options_replaygain.ui \
			replaygain/ui_options_replaygain.py \
			swapprefix.py \
			titlecase.py \
			tracks2clipboard.py

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

post-install:
.for dir in ${PLUGINS_DIRS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/picard/${dir}
.endfor
.for file in ${PLUGINS}
	${INSTALL_DATA} ${WRKSRC}/contrib/plugins/${file} ${PREFIX}/share/picard/${file}
.endfor

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./setup.py build_ext -i test

.include <bsd.port.mk>
