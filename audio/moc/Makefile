COMMENT =	console audio player
DISTNAME =	moc-2.5.2
CATEGORIES =	audio
HOMEPAGE =	https://moc.daper.net/
SITES =		https://ftp.daper.net/pub/soft/moc/stable/ \
		https://distfiles.sigtrap.nl/
EXTRACT_SUFX =	.tar.bz2
REVISION =	12

# GPLv3+
PERMIT_PACKAGE = Yes

# uses pledge()
WANTLIB += ${COMPILER_LIBCXX} FLAC c crypto curl curses db faad
WANTLIB += iconv id3tag ltdl m mad magic modplug mp3lame mpcdec
WANTLIB += mpg123 nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_quictls
WANTLIB += ogg opus samplerate sndfile sndio speex ssl tag tag_c
WANTLIB += vorbis vorbisenc vorbisfile wavpack z

COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS =	audio/faad \
		audio/flac \
		audio/lame \
		audio/libid3tag \
		audio/libmad \
		audio/libmodplug \
		audio/libogg \
		audio/libsamplerate \
		audio/libsndfile \
		audio/libvorbis \
		audio/mpg123 \
		audio/musepack \
		audio/opus \
		audio/speex \
		audio/taglib \
		audio/wavpack \
		converters/libiconv \
		databases/db/v4 \
		devel/libmagic \
		devel/libtool,-ltdl \
		net/curl \
		net/ngtcp2 \
		www/nghttp2 \
		www/nghttp3

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
		--without-ffmpeg \
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
