# $OpenBSD: Makefile,v 1.25 2021/12/12 17:04:37 rsadowski Exp $

COMMENT =	console audio player
DISTNAME =	moc-2.5.2
CATEGORIES =	audio
HOMEPAGE =	http://moc.daper.net/
MASTER_SITES =	http://ftp.daper.net/pub/soft/moc/stable/ \
		https://distfiles.sigtrap.nl/
EXTRACT_SUFX =	.tar.bz2
REVISION =	8

# GPLv3+
PERMIT_PACKAGE = Yes

# uses pledge()
WANTLIB += ${COMPILER_LIBCXX} FLAC aom avcodec avformat avutil
WANTLIB += bz2 c crypto curl curses dav1d db faad gsm iconv id3tag
WANTLIB += ltdl lzma m mad magic modplug mp3lame mpcdec nghttp2
WANTLIB += ogg opus samplerate sndfile sndio speex ssl swresample
WANTLIB += tag tag_c theoradec theoraenc vorbis vorbisenc vorbisfile
WANTLIB += vpx wavpack x264 x265 xml2 xvidcore z

COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS =	audio/faad \
		audio/flac \
		audio/libid3tag \
		audio/libmad \
		audio/libmodplug \
		audio/libsamplerate \
		audio/libsndfile \
		audio/libvorbis \
		audio/musepack \
		audio/wavpack \
		audio/speex \
		audio/taglib \
		databases/db/v4 \
		devel/libmagic \
		devel/libtool,-ltdl \
		graphics/ffmpeg \
		net/curl

SEPARATE_BUILD = Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += \
		--with-sndio \
		--without-jack \
		--without-oss \
		--without-alsa \
		--without-rcc \
		--without-included-ltdl \
		--without-timidity \
		--with-magic \
		--with-ltdl-include=${LOCALBASE}/include \
		--with-ltdl-lib=${LOCALBASE}/lib
CONFIGURE_ENV = CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-install:
	${SUBST_CMD} ${WRKSRC}/mocp.1

post-install:
	rm ${PREFIX}/lib/moc/decoder_plugins/*.{,l}a
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/moc
.for f in config.example keymap.example
	mv ${PREFIX}/share/doc/moc/$f ${PREFIX}/share/examples/moc
.endfor

.include <bsd.port.mk>
