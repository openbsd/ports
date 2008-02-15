# $OpenBSD: Makefile,v 1.1.1.1 2008/02/15 15:52:02 steven Exp $

COMMENT=	advanced music player

DISTNAME=	aqualung-0.9beta9.1
CATEGORIES=	audio

HOMEPAGE=	http://aqualung.factorial.hu/

MAINTAINER=	Jeremy Evans <openbsd@jeremyevans.net>

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes  
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aqualung/}

MODULES=	devel/gettext

LIB_DEPENDS=	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
		xml2::textproc/libxml \
		samplerate::audio/libsamplerate \
		sndfile::audio/libsndfile \
		mac::audio/mac \
		mad::audio/libmad \
		mpcdec::audio/libmpcdec \
		FLAC::audio/flac \
		mp3lame::audio/lame \
		ogg::audio/libogg \
		avcodec,avformat,avutil::graphics/ffmpeg \
		vorbis,vorbisfile,vorbisenc::audio/libvorbis \
		bz2::archivers/bzip2
		
WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender c expat freetype fontconfig atk-1.0 \
		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 cairo glitz png \
		pango-1.0 pthread ossaudio pangocairo-1.0 pangoft2-1.0 \
		m stdc++ z

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-pthread -L${LOCALBASE}/lib -L${X11BASE}/lib" \
		CFLAGS="${CFLAGS} -DOSS_DEVICE='\"/dev/audio\"'  \
		-DPTHREAD_MIN_PRIORITY=0 -DPTHREAD_MAX_PRIORITY=31  \
		-I${LOCALBASE}/include"

# cddb, ifp, wavpack (requires lib*) - no package
# cdda (requires libcdio) - no package
# jack - package not yet in tree
# ladspa (requires liblrdf) - no package 
# mod (requires libmodplug) - no package
# speex (requires liboggz) - no package
CONFIGURE_ARGS=	--with-flac \
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
		--without-jack \
		--without-ladspa \
		--without-mod \
		--without-speex \
		--without-wavpack

post-install:
	mv ${PREFIX}/share/aqualung/doc ${PREFIX}/share/doc/aqualung

.include <bsd.port.mk>
