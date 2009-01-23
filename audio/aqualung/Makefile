# $OpenBSD: Makefile,v 1.7 2009/01/23 17:42:14 jasper Exp $

COMMENT=	advanced music player

DISTNAME=	aqualung-0.9beta9.1
PKGNAME=	${DISTNAME}p5
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
		mac::audio/mac \
		mad::audio/libmad \
		mpcdec::audio/libmpcdec \
		FLAC::audio/flac \
		avcodec,avformat,avutil::graphics/ffmpeg \
		jack::audio/jack

RUN_DEPENDS=	::devel/desktop-file-utils
		
WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 bz2 c cairo expat \
		fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 m mp3lame ogg ossaudio \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread \
		samplerate sndfile stdc++ vorbis vorbisenc vorbisfile z

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-pthread -L${LOCALBASE}/lib -L${X11BASE}/lib" \
		CFLAGS="${CFLAGS} -DOSS_DEVICE='\"/dev/audio\"'  \
		-DPTHREAD_MIN_PRIORITY=0 -DPTHREAD_MAX_PRIORITY=31  \
		-I${LOCALBASE}/include"

# cddb, ifp, wavpack (requires lib*) - no package
# cdda (requires libcdio) - no package
# ladspa (requires liblrdf) - no package
# mod (requires libmodplug) - no package
# speex (requires liboggz) - no package
CONFIGURE_ARGS=	--with-flac \
		--with-jack \
		--with-lame \
		--with-lavc \
		--with-loop \
		--with-mac \
		--with-mpc \
		--with-mpeg \
		--with-ogg \
		--with-oss \
		--with-podcast \
		--with-sndfile \
		--with-src \
		--with-systray \
		--with-vorbisenc \
		--without-alsa \
		--without-cdda \
		--without-cddb \
		--without-ifp \
		--without-ladspa \
		--without-mod \
		--without-speex \
		--without-wavpack

post-install:
	mv ${PREFIX}/share/aqualung/doc ${PREFIX}/share/doc/aqualung
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	sed -e 's+%%PREFIX%%+${TRUEPREFIX}+' ${FILESDIR}/aqualung.desktop > \
		${PREFIX}/share/applications/aqualung.desktop


.include <bsd.port.mk>
