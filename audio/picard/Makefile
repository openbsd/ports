# $OpenBSD: Makefile,v 1.9 2010/11/20 15:48:57 millert Exp $

COMMENT =		automatic audio files tagger using the MusicBrainz database

MODPY_EGG_VERSION =	0.12.1
DISTNAME =		picard-${MODPY_EGG_VERSION}

CATEGORIES =		audio

HOMEPAGE =		http://musicbrainz.org/doc/Picard_Tagger

MAINTAINER =		Amaury Gauthier <amaury.gauthier@etu.unilim.fr>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += m stdc++ avcodec avformat ofa

MASTER_SITES =		ftp://ftp.musicbrainz.org/pub/musicbrainz/picard/

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
# --single-version-externally-managed option used by MODPY doesn't exist
MODPY_DISTUTILS_INSTALL=install --prefix=${LOCALBASE} --root=${DESTDIR}

# msgfmt
BUILD_DEPENDS =		devel/gettext

LIB_DEPENDS =		audio/libofa graphics/ffmpeg

RUN_DEPENDS =		py-qt4->=4.1:x11/py-qt4 \
			py-mutagen->=1.9:audio/py-mutagen \
			devel/desktop-file-utils

REGRESS_DEPENDS =	${BASE_PKGPATH}

PLUGINS_DIRS =		lastfm \
			replaygain
PLUGINS =		addrelease.py \
			coverart.py \
			cuesheet.py \
			discnumber.py \
			featartist.py \
			fix_mp4_meta.py \
			lastfm/__init__.py \
			lastfm/options_lastfm.ui \
			lastfm/ui_options_lastfm.py \
			originalreleasedate.py \
			replaygain/__init__.py \
			replaygain/options_replaygain.ui \
			replaygain/ui_options_replaygain.py \
			titlecase.py

post-install:
.for dir in ${PLUGINS_DIRS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/picard/${dir}
.endfor
.for file in ${PLUGINS}
	${INSTALL_DATA} ${WRKSRC}/contrib/plugins/${file} ${PREFIX}/share/picard/${file}
.endfor

do-regress:
	cd ${WRKSRC} && ${MODPY_BIN} ./setup.py build_ext -i test

.include <bsd.port.mk>
