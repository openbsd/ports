# $OpenBSD: Makefile,v 1.4 2009/07/19 11:22:18 kili Exp $

COMMENT =		audio player daemon with library management

V =			0.6
DISTNAME =		xmms2-${V}DrMattDestruction
PKGNAME =		xmms2-${V}p2

SHARED_LIBS +=		xmmsclient++		0.0 # 3.0.0
SHARED_LIBS +=		xmmsclient++-glib	0.0 # 1.0.0
SHARED_LIBS +=		xmmsclient-glib		0.0 # 1.0.0
SHARED_LIBS +=		xmmsclient		0.0 # 5.0.0

CATEGORIES =		audio

HOMEPAGE =		http://wiki.xmms2.xmms.se

MAINTAINER=		Amaury Gauthier <amaury.gauthier@etu.unilim.fr>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xmms2/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python \
			devel/gettext \
			perl

WANTLIB  =		a52 c faac faad m mp3lame ncurses ogg oil-0.3 \
			pthread readline schroedinger-1.0 theora \
			util vorbis vorbisenc vorbisfile x264 z

NO_REGRESS =		Yes

BUILD_DEPENDS =		::devel/pyrex \
			::devel/boost

LIB_DEPENDS =		${MODPY_LIB_DEPENDS} \
			gio-2.0.>=1800,glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
			avcodec.>=13,avutil.>=6::graphics/ffmpeg \
			ao.>=3::audio/libao \
			jack.>=0::audio/jack \
			sqlite3.>=13::databases/sqlite3 \
			xml2.>=10::textproc/libxml \
			FLAC.>=9::audio/flac \
			curl.>=13::net/curl \
			mad.>=2::audio/libmad \
			avahi-client,avahi-common,avahi-glib::net/avahi

WSCRIPT_PATCHES =	src/clients/lib/xmmsclient++/wscript \
			src/clients/lib/xmmsclient++-glib/wscript \
			src/clients/lib/xmmsclient-glib/wscript \
			src/clients/lib/xmmsclient/wscript
pre-configure:
	cd ${WRKSRC} && ${SUBST_CMD} ${WSCRIPT_PATCHES}

# Xmms2 uses it's own modified Waf, so we cannot use devel/waf.
# Disable speex and sun because they are broken
# Disable shared memory support for visualization because it requires semtimedop()
do-configure:
	cd ${WRKSRC} && PYTHON=${MODPY_BIN} ${MODPY_BIN} ./waf configure --prefix=${PREFIX} \
		--with-mandir=${PREFIX}/man \
		--conf-prefix=${PREFIX} \
		--without-plugins=speex,sun \
		--with-default-output-plugin=ao \
		--disable-shmvis-server \
		--without-optionals=dns_sd,medialib-updater,tests,xmmsclient-cf,xmmsclient-ecore,ruby \
		--without-plugins=airplay,alsa,cdda,coreaudio,faad,ices,mac,mms,modplug,mpg123,musepack,nms,ofa,oss,pulse,samba,sid,vocoder,waveout,wavpack

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf build

do-install:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf install
# These directories are empty after the fake
	rmdir ${WRKSRC}/_build_/default/src/clients/lib/perl/pm/XMMSClient
	rmdir ${WRKSRC}/_build_/default/src/clients/lib/perl/pm
	/usr/bin/pod2man ${WRKSRC}/src/clients/lib/perl/pm/XMMSClient.pm > ${WRKDIR}/Audio::XMMSClient.3p
	/usr/bin/pod2man ${WRKSRC}/src/clients/lib/perl/pm/XMMSClient/Glib.pm > ${WRKDIR}/Audio::XMMSClient::Glib.3p
	${INSTALL_MAN} ${WRKDIR}/*.3p ${PREFIX}/man/man3p/

.include <bsd.port.mk>
