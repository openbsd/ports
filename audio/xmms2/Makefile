COMMENT =		audio player daemon with library management

V =			0.9.5
DISTNAME =		xmms2-${V}
REVISION =		1

SHARED_LIBS +=		xmmsclient++		3.0 # 4.0.0
SHARED_LIBS +=		xmmsclient++-glib	2.0 # 1.0.0
SHARED_LIBS +=		xmmsclient-glib		2.0 # 1.0.0
SHARED_LIBS +=		xmmsclient		3.0 # 6.0.0

CATEGORIES =		audio

HOMEPAGE =		https://github.com/xmms2
PORTROACH =		site:https://github.com/xmms2/xmms2-devel/releases/

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC ao avahi-client avahi-common
WANTLIB += avahi-glib avcodec c curl fluidsynth gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 intl jack m mpg123 ogg opus
WANTLIB += opusfile perl readline sndfile util vorbisfile xml2

SITES =		https://github.com/xmms2/xmms2-devel/releases/download/${V}/
EXTRACT_SUFX =	.tar.xz

MODPERL_REGEN_PPPORT =	src/clients/lib/perl/ppport.h


COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/python \
			perl

NO_TEST =		Yes

BUILD_DEPENDS =		devel/bison \
			devel/boost \
			lang/cython \
			textproc/p5-Pod-Parser

LIB_DEPENDS =		audio/flac \
			audio/fluidsynth \
			audio/jack \
			audio/libao \
			audio/libogg \
			audio/libsndfile \
			audio/libvorbis \
			audio/mpg123 \
			audio/opusfile \
			devel/glib2 \
			graphics/ffmpeg \
			net/avahi,-glib \
			net/curl \
			textproc/libxml

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
		--disable-shmvis-server \
		--without-optionals=medialib-updater,tests,xmmsclient-cf,xmmsclient-ecore,ruby,sqlite2s4,migrate-collections \
		--without-plugins=airplay,alsa,cdda,coreaudio,faad,gme,ices,mac,mad,mms,modplug,musepack,nms,ofa,oss,pulse,samba,sid,speex,sun,tremor,vocoder,waveout,wavpack

post-configure:
	# avoid linking to bogus libraries
	sed -i "s/SONAME_ST.*/SONAME_ST=''/" ${WRKSRC}/_build_/c4che/_cache.py

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf build -v -j${MAKE_JOBS}

do-install:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf install -v -j${MAKE_JOBS} --without-ldconfig
	/usr/bin/pod2man ${PREFIX}/${P5ARCH}/Audio/XMMSClient.pod > ${WRKDIR}/Audio::XMMSClient.3p
	/usr/bin/pod2man ${PREFIX}/${P5ARCH}/Audio/XMMSClient/Glib.pm > ${WRKDIR}/Audio::XMMSClient::Glib.3p
	/usr/bin/pod2man ${PREFIX}/${P5ARCH}/Audio/XMMSClient/Collection.pod > ${WRKDIR}/Audio::XMMSClient::Collection.3p
	/usr/bin/pod2man ${PREFIX}/${P5ARCH}/Audio/XMMSClient/Playlist.pod > ${WRKDIR}/Audio::XMMSClient::Playlist.3p
	/usr/bin/pod2man ${PREFIX}/${P5ARCH}/Audio/XMMSClient/Result.pod > ${WRKDIR}/Audio::XMMSClient::Result.3p
	${INSTALL_MAN} ${WRKDIR}/*.3p ${PREFIX}/man/man3p/

.include <bsd.port.mk>
