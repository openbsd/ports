# $OpenBSD: Makefile,v 1.22 2010/11/07 00:50:22 jeremy Exp $

COMMENT=	advanced music player

DISTNAME=	aqualung-0.9beta11
REVISION=	3
CATEGORIES=	audio

HOMEPAGE=	http://aqualung.factorial.hu/

MAINTAINER=	Jeremy Evans <jeremy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes  
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 bz2 c cairo expat \
		fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 m mp3lame ogg pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread \
		pthread-stubs samplerate sndfile sndio stdc++ vorbis \
		vorbisenc vorbisfile xcb xcb-render xcb-shm z \
		gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 xml2 lua mac mad \
		mpcdec FLAC avcodec avformat avutil jack wavpack \
		lrdf GL Xxf86vm drm oggz speex cddb cdio cdio_cdda \
		cdio_paranoia modplug

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aqualung/}

MODULES=	devel/gettext

LIB_DEPENDS=	::audio/flac \
		::audio/jack \
		::audio/libcdio \
		::audio/libcddb \
		::audio/libmad \
		::audio/libmodplug \
		::audio/libmpcdec \
		::audio/mac \
		::audio/speex \
		::audio/wavpack \
		::graphics/ffmpeg \
		::lang/lua \
		::multimedia/oggz \
		::textproc/liblrdf \
		::textproc/libxml \
		::x11/gtk+2

RUN_DEPENDS=	::devel/desktop-file-utils
		
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-pthread -L${LOCALBASE}/lib -L${X11BASE}/lib" \
		CFLAGS="${CFLAGS} -DOSS_DEVICE='\"/dev/audio\"'  \
		-DPTHREAD_MIN_PRIORITY=0 -DPTHREAD_MAX_PRIORITY=31  \
		-I${LOCALBASE}/include"

# ifp (requires libifp) - no package
CONFIGURE_ARGS=	--with-cdda \
		--with-cddb \
		--with-flac \
		--with-jack \
		--with-ladspa \
		--with-lame \
		--with-lavc \
		--with-loop \
		--with-lua \
		--with-mac \
		--with-mod \
		--with-mpc \
		--with-mpeg \
		--with-ogg \
		--with-podcast \
		--with-sndfile \
		--with-sndio \
		--with-speex \
		--with-src \
		--with-systray \
		--with-vorbisenc \
		--with-wavpack \
		--without-alsa \
		--without-ifp \
		--without-oss \
		--without-pulse

post-install:
	mv ${PREFIX}/share/aqualung/doc ${PREFIX}/share/doc/aqualung
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${SUBST_CMD} -c ${FILESDIR}/aqualung.desktop \
		${PREFIX}/share/applications/aqualung.desktop
	@chown ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/applications/aqualung.desktop

.include <bsd.port.mk>
