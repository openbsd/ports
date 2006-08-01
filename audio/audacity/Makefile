# $OpenBSD: Makefile,v 1.2 2006/08/01 10:50:19 espie Exp $

COMMENT=	"free audio editor"

DISTNAME=	audacity-src-1.2.4
PKGNAME=	${DISTNAME:S/-src//}
CATEGORIES=     audio

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=audacity/}

HOMEPAGE=	http://audacity.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	c m ossaudio pthread stdc++ \
		FLAC++ ogg vorbisenc

BUILD_DEPENDS=	::archivers/zip
LIB_DEPENDS=	wx_gtk.>=2.4::x11/wxWidgets/gtk \
		sndfile.>=1::audio/libsndfile \
		samplerate.>=1::audio/libsamplerate \
		FLAC.>=4::audio/flac \
		vorbis.>=0,vorbisfile.>=1::audio/libvorbis \
		id3tag.>=2::audio/libid3tag \
		mad.>=2::audio/libmad

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			WXCONFIG="${LOCALBASE}/bin/wxgtk-2.4-config"

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-id3=system \
			--with-vorbis=system \
			--with-libflac=system \
			--with-libmad=system \
			--with-libsndfile=system \
			--with-libsamplerate=system \
			--with-libresample \
			--with-nyquist \
			--with-ladspa \
			--with-portmixer \
			--with-soundtouch \
			--with-portaudio=v18 \
			--with-help

MAKE_FLAGS=		CC="${CC}"

REGRESS_FLAGS=		LDFLAGS="-L${X11BASE}/lib"

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},' \
		${WRKSRC}/src/export/ExportMP3.cpp

.include <bsd.port.mk>
