# $OpenBSD: Makefile,v 1.14 2010/10/24 15:53:55 sthen Exp $

COMMENT =		audio player daemon with library management

V =			0.7
DISTNAME =		xmms2-${V}DrNo
PKGNAME =		xmms2-${V}
REVISION =		4

SHARED_LIBS +=		xmmsclient++		1.0 # 4.0.0
SHARED_LIBS +=		xmmsclient++-glib	0.0 # 1.0.0
SHARED_LIBS +=		xmmsclient-glib		0.0 # 1.0.0
SHARED_LIBS +=		xmmsclient		1.0 # 6.0.0

CATEGORIES =		audio

HOMEPAGE =		http://wiki.xmms2.xmms.se/

MAINTAINER=		Amaury Gauthier <amaury.gauthier@etu.unilim.fr>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c gsm faac faad m mp3lame ncurses ogg orc-0.4 pthread readline
WANTLIB += schroedinger-1.0 speex stdc++ theora util vorbis vorbisenc
WANTLIB += vorbisfile x264 z gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 avcodec avutil ao jack sqlite3 xml2 FLAC curl
WANTLIB += mad avahi-client avahi-common avahi-glib vorbisidec
WANTLIB += ${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xmms2/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python \
			devel/gettext \
			perl

USE_GROFF =		Yes
NO_REGRESS =		Yes

BUILD_DEPENDS =		::devel/pyrex \
			::devel/boost

LIB_DEPENDS =		${MODPY_LIB_DEPENDS} \
			::devel/glib2 \
			:ffmpeg->=20080620p10:graphics/ffmpeg \
			::audio/libao \
			::audio/jack \
			::databases/sqlite3 \
			::textproc/libxml \
			::audio/flac \
			::net/curl \
			::audio/libmad \
			::net/avahi \
			::audio/tremor

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
		--mandir=${PREFIX}/man \
		--conf-prefix=${PREFIX} \
		--with-default-output-plugin=ao \
		--disable-shmvis-server \
		--without-optionals=dns_sd,medialib-updater,tests,xmmsclient-cf,xmmsclient-ecore,ruby \
		--without-plugins=airplay,alsa,cdda,coreaudio,faad,gme,ices,mac,mms,modplug,mpg123,musepack,nms,ofa,oss,pulse,samba,sid,speex,sun,vocoder,waveout,wavpack

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
