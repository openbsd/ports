# $OpenBSD: Makefile,v 1.12 2009/08/10 06:29:52 kili Exp $

COMMENT=	advanced music player

DISTNAME=	aqualung-0.9beta10
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio

HOMEPAGE=	http://aqualung.factorial.hu/

MAINTAINER=	Jeremy Evans <openbsd@jeremyevans.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes  
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aqualung/}

MODULES=	devel/gettext

LIB_DEPENDS=	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
		xml2::textproc/libxml \
		lua::lang/lua \
		mac::audio/mac \
		mad::audio/libmad \
		mpcdec::audio/libmpcdec \
		FLAC::audio/flac \
		avcodec,avformat,avutil::graphics/ffmpeg \
		jack::audio/jack \
		wavpack::audio/wavpack

RUN_DEPENDS=	::devel/desktop-file-utils
		
WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 bz2 c cairo expat \
		fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 m mp3lame ogg pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread \
		pthread-stubs samplerate sndfile sndio stdc++ vorbis \
		vorbisenc vorbisfile xcb z

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-pthread -L${LOCALBASE}/lib -L${X11BASE}/lib" \
		CFLAGS="${CFLAGS} -DOSS_DEVICE='\"/dev/audio\"'  \
		-DPTHREAD_MIN_PRIORITY=0 -DPTHREAD_MAX_PRIORITY=31  \
		-I${LOCALBASE}/include"

# cddb, ifp (requires lib*) - no package
# cdda (requires libcdio) - no package
# ladspa (requires liblrdf) - no package
# mod (requires libmodplug) - no package
# speex (requires liboggz) - no package
CONFIGURE_ARGS=	--with-flac \
		--with-jack \
		--with-lame \
		--with-lavc \
		--with-loop \
		--with-lua \
		--with-mac \
		--with-mpc \
		--with-mpeg \
		--with-ogg \
		--with-podcast \
		--with-sndfile \
		--with-sndio \
		--with-src \
		--with-systray \
		--with-vorbisenc \
		--with-wavpack \
		--without-alsa \
		--without-cdda \
		--without-cddb \
		--without-ifp \
		--without-ladspa \
		--without-mod \
		--without-oss \
		--without-speex

post-install:
	mv ${PREFIX}/share/aqualung/doc ${PREFIX}/share/doc/aqualung
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${SUBST_CMD} -c ${FILESDIR}/aqualung.desktop \
		${PREFIX}/share/applications/aqualung.desktop
	@chown ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/applications/aqualung.desktop

.include <bsd.port.mk>
