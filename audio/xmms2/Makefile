# $OpenBSD: Makefile,v 1.32 2014/04/06 20:13:11 brad Exp $

COMMENT =		audio player daemon with library management
BROKEN-sparc64 =	waf build goes into an infinite loop

V =			0.8
DISTNAME =		xmms2-${V}DrO_o
PKGNAME =		xmms2-${V}
REVISION =		2

SHARED_LIBS +=		xmmsclient++		2.0 # 4.0.0
SHARED_LIBS +=		xmmsclient++-glib	1.0 # 1.0.0
SHARED_LIBS +=		xmmsclient-glib		1.0 # 1.0.0
SHARED_LIBS +=		xmmsclient		2.0 # 6.0.0

CATEGORIES =		audio

HOMEPAGE =		http://wiki.xmms2.xmms.se/

MAINTAINER=		Amaury Gauthier <amaury.gauthier@etu.unilim.fr>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC ao avahi-client avahi-common avahi-glib avcodec
WANTLIB += avutil c curl gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 jack m mad ncurses ogg orc-0.4
WANTLIB += pcre pthread readline schroedinger-1.0 sndfile speex
WANTLIB += sqlite3 stdc++ theoradec theoraenc vorbis
WANTLIB += vorbisfile vorbisidec vpx x264 xml2

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xmms2/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python \
			devel/gettext \
			perl

USE_GROFF =		Yes
NO_TEST =		Yes

BUILD_DEPENDS =		devel/pyrex \
			devel/boost

LIB_DEPENDS =		devel/glib2 \
			graphics/ffmpeg>=20130319 \
			audio/libao \
			audio/jack \
			textproc/libxml \
			net/curl \
			audio/libmad \
			net/avahi \
			audio/libsndfile \
			audio/tremor

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
	cd ${WRKSRC} && PYTHON=${MODPY_BIN} ${MODPY_BIN} ./waf configure \
		--prefix=${PREFIX} \
		--mandir=${PREFIX}/man \
		--conf-prefix=${PREFIX} \
		--with-default-output-plugin=ao \
		--disable-shmvis-server \
		--without-optionals=medialib-updater,tests,xmmsclient-cf,xmmsclient-ecore,ruby \
		--without-plugins=airplay,alsa,cdda,coreaudio,faad,gme,ices,mac,mms,modplug,mpg123,musepack,nms,ofa,oss,pulse,samba,sid,speex,sun,vocoder,waveout,wavpack

post-configure:
	# avoid linking to bogus libraries
	perl -pi -e "s/SONAME_ST.*/SONAME_ST=''/" ${WRKSRC}/_build_/c4che/_cache.py

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
