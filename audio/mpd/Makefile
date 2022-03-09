# $OpenBSD: Makefile,v 1.140 2022/03/09 09:52:23 landry Exp $

BROKEN-hppa =		no atomic ops
COMMENT =		Music Player Daemon
VER =			0.23.5
DISTNAME =		mpd-${VER}
EXTRACT_SUFX =		.tar.xz
CATEGORIES =		audio
HOMEPAGE =		https://www.musicpd.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		FLAC audiofile avcodec avfilter avformat avutil \
			bz2 c cdio cdio_cdda cdio_paranoia curl \
			expat faad fmt icui18n icuuc \
			id3tag iso9660 m mikmod mp3lame mpcdec \
			mpdclient ogg opus pcre2-8 pthread samplerate \
			shout sndfile sndio sqlite3 \
			vorbis vorbisenc yajl z ${COMPILER_LIBCXX}

MASTER_SITES =		https://www.musicpd.org/download/mpd/${VER:R}/

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/boost
BUILD_DEPENDS +=	textproc/py-sphinx,python3

LIB_DEPENDS =		audio/faad>=2.6.1p0 \
			audio/flac \
			audio/lame \
			audio/libcdio \
			audio/libcdio-paranoia \
			audio/libid3tag \
			audio/libmikmod \
			audio/libmpdclient \
			audio/libsamplerate \
			audio/libsndfile \
			audio/libvorbis \
			audio/musepack \
			audio/opus \
			databases/sqlite3 \
			devel/fmt \
			devel/libaudiofile \
			devel/libyajl \
			devel/pcre2 \
			graphics/ffmpeg \
			net/curl \
			net/libshout \
			textproc/icu4c

MODULES =		devel/meson

CONFIGURE_ARGS +=	-Dsystemd=disabled \
			-Dinotify=false \
			-Depoll=false \
			-Dsyslog=enabled \
			-Dupnp=disabled \
			-Dlibmpdclient=enabled \
			-Dneighbor=false \
			-Dhtml_manual=false
# storage
CONFIGURE_ARGS +=	-Dudisks=disabled \
			-Dwebdav=enabled

# playlist
CONFIGURE_ARGS	+=	-Dcue=true

# inputs
CONFIGURE_ARGS +=	-Dcdio_paranoia=enabled \
			-Dcurl=enabled \
			-Dnfs=disabled \
			-Dmms=disabled \
			-Dsmbclient=disabled

# commercial
CONFIGURE_ARGS +=	-Dqobuz=disabled \
			-Dsoundcloud=enabled

# archive
CONFIGURE_ARGS +=	-Dbzip2=enabled \
			-Diso9660=enabled \
			-Dzzip=disabled
# tag
CONFIGURE_ARGS +=	-Did3tag=enabled \
			-Dchromaprint=disabled
# decoders
CONFIGURE_ARGS +=	-Dadplug=disabled \
			-Daudiofile=enabled \
			-Dfaad=enabled \
			-Dffmpeg=enabled \
			-Dflac=enabled \
			-Dfluidsynth=disabled \
			-Dgme=disabled \
			-Dmad=disabled \
			-Dmikmod=enabled \
			-Dmodplug=disabled \
			-Dmpcdec=enabled \
			-Dmpg123=disabled \
			-Dopenmpt=disabled \
			-Dopus=enabled \
			-Dsidplay=disabled \
			-Dsndfile=enabled \
			-Dtremor=disabled \
			-Dvorbis=enabled \
			-Dwavpack=disabled \
			-Dwildmidi=disabled

# encoders
CONFIGURE_ARGS +=	-Dvorbisenc=enabled \
			-Dlame=enabled \
			-Dtwolame=disabled \
			-Dshine=disabled \
			-Dwave_encoder=true

# filters
CONFIGURE_ARGS +=	-Dlibsamplerate=enabled \
			-Dsoxr=disabled

# outputs
CONFIGURE_ARGS +=	-Dalsa=disabled \
			-Dao=disabled \
			-Dfifo=true \
			-Dhttpd=true \
			-Djack=disabled \
			-Dopenal=disabled \
			-Doss=disabled \
			-Dpipe=true \
			-Dpulse=disabled \
			-Dpipewire=disabled \
			-Drecorder=true \
			-Dshout=enabled \
			-Dsndio=enabled \
			-Dsolaris_output=disabled

# misc
CONFIGURE_ARGS +=	-Ddbus=disabled \
			-Dexpat=enabled \
			-Dicu=enabled \
			-Diconv=enabled \
			-Dpcre=enabled \
			-Dsqlite=enabled \
			-Dyajl=enabled \
			-Dzlib=enabled \
			-Dzeroconf=disabled

# OggFLAC tests, initgroups(3)
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -D_BSD_SOURCE"

post-install:
	# avoid dependency on gtk3,-guic
	@rm -Rf ${PREFIX}/share/icons/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpd
	${INSTALL_DATA} ${WRKSRC}/doc/mpdconf.example \
		${PREFIX}/share/examples/mpd/mpd.conf

# disable meson's default of using "-Wl,--as-needed" on ld.bfd arches;
# build failures due to undefined references are often seen.
.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
CONFIGURE_ARGS +=	-Db_asneeded=false
.endif

.include <bsd.port.mk>
