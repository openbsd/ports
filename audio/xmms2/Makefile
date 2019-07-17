# $OpenBSD: Makefile,v 1.51 2019/07/17 14:49:20 danj Exp $

COMMENT =		audio player daemon with library management
BROKEN-sparc64 =	waf build goes into an infinite loop

V =			0.8
DISTNAME =		xmms2-${V}DrO_o
PKGNAME =		xmms2-${V}
REVISION =		13

SHARED_LIBS +=		xmmsclient++		2.0 # 4.0.0
SHARED_LIBS +=		xmmsclient++-glib	1.0 # 1.0.0
SHARED_LIBS +=		xmmsclient-glib		1.0 # 1.0.0
SHARED_LIBS +=		xmmsclient		2.0 # 6.0.0

CATEGORIES =		audio

HOMEPAGE =		https://xmms2.org/

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += FLAC ao avahi-client avahi-common avahi-glib avcodec
WANTLIB += avutil c curl curses gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 intl jack m mpg123 ogg pcre perl pthread readline
WANTLIB += sndfile speex sqlite3 ${COMPILER_LIBCXX} vorbis vorbisfile
WANTLIB += vpx x264 xml2 opus swresample x265 ${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xmms2/}

EXTRACT_SUFX =		.tar.bz2

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/python \
			perl

NO_TEST =		Yes

BUILD_DEPENDS =		devel/pyrex \
			devel/boost

LIB_DEPENDS =		devel/glib2 \
			databases/sqlite3 \
			graphics/ffmpeg \
			audio/libao \
			audio/jack \
			textproc/libxml \
			net/curl \
			audio/mpg123 \
			net/avahi \
			audio/libsndfile

WSCRIPT_PATCHES =	src/clients/lib/xmmsclient++/wscript \
			src/clients/lib/xmmsclient++-glib/wscript \
			src/clients/lib/xmmsclient-glib/wscript \
			src/clients/lib/xmmsclient/wscript
pre-configure:
	cd ${WRKSRC} && ${SUBST_CMD} ${WSCRIPT_PATCHES}

# Xmms2 uses its own modified Waf, so we cannot use devel/waf.
# Disable speex and sun because they are broken
# Disable shared memory support for visualization because it requires semtimedop()
do-configure:
	cd ${WRKSRC} && PYTHON=${MODPY_BIN} CXX='${CXX}' CC='${CC}' \
	    ${MODPY_BIN} ./waf configure \
		--prefix=${PREFIX} \
		--mandir=${PREFIX}/man \
		--conf-prefix=${PREFIX} \
		--with-default-output-plugin=ao \
		--no-cython \
		--disable-shmvis-server \
		--without-optionals=medialib-updater,tests,xmmsclient-cf,xmmsclient-ecore,ruby \
		--without-plugins=airplay,alsa,cdda,coreaudio,faad,gme,ices,mac,mad,mms,modplug,musepack,nms,ofa,oss,pulse,samba,sid,speex,sun,tremor,vocoder,waveout,wavpack

post-configure:
	# avoid linking to bogus libraries
	sed -i "s/SONAME_ST.*/SONAME_ST=''/" ${WRKSRC}/_build_/c4che/_cache.py

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf build

do-install:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf install --without-ldconfig
	/usr/bin/pod2man ${PREFIX}/${P5ARCH}/Audio/XMMSClient.pod > ${WRKDIR}/Audio::XMMSClient.3p
	/usr/bin/pod2man ${PREFIX}/${P5ARCH}/Audio/XMMSClient/Glib.pm > ${WRKDIR}/Audio::XMMSClient::Glib.3p
	/usr/bin/pod2man ${PREFIX}/${P5ARCH}/Audio/XMMSClient/Collection.pod > ${WRKDIR}/Audio::XMMSClient::Collection.3p
	/usr/bin/pod2man ${PREFIX}/${P5ARCH}/Audio/XMMSClient/Playlist.pod > ${WRKDIR}/Audio::XMMSClient::Playlist.3p
	/usr/bin/pod2man ${PREFIX}/${P5ARCH}/Audio/XMMSClient/Result.pod > ${WRKDIR}/Audio::XMMSClient::Result.3p
	${INSTALL_MAN} ${WRKDIR}/*.3p ${PREFIX}/man/man3p/

.include <bsd.port.mk>
