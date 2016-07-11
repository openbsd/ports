# $OpenBSD: Makefile,v 1.3 2016/07/11 07:51:30 czarkoff Exp $

COMMENT =	console audio player
DISTNAME =	moc-2.5.1
CATEGORIES =	audio
HOMEPAGE =	http://moc.daper.net/
MASTER_SITES =	http://ftp.daper.net/pub/soft/moc/stable/
EXTRACT_SUFX =	.tar.bz2
REVISION =	1

# GPLv3+
PERMIT_PACKAGE_CDROM = Yes

# uses pledge()
WANTLIB += FLAC avcodec avformat avutil bz2 c crypto curl db estdc++
WANTLIB += faad gsm iconv id3tag idn intl ltdl m mad magic mp3lame
WANTLIB += mpcdec ncursesw nghttp2 ogg opus pthread samplerate
WANTLIB += sndfile sndio speex ssl stdc++ swresample tag tag_c
WANTLIB += vorbis vorbisenc vorbisfile vpx wavpack x264 x265 xvidcore
WANTLIB += z

LIB_DEPENDS =	audio/faad \
		audio/flac \
		audio/libid3tag \
		audio/libmad \
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
