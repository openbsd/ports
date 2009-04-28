# $OpenBSD: Makefile,v 1.6 2009/04/28 21:02:03 jasper Exp $

COMMENT=		record desktop sessions to an Ogg-Theora-Vorbis file

DISTNAME=		recordmydesktop-0.3.8.1
PKGNAME=		${DISTNAME}p1

WANTLIB=		ICE SM X11 Xdamage Xext Xfixes c m ogg ossaudio pthread z

LIB_DEPENDS=		vorbis,vorbisfile,vorbisenc::audio/libvorbis \
			theora::multimedia/libtheora \
			jack::audio/jack

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-oss=yes \
			--enable-jack=yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="`pkg-config --libs jack` -logg -lossaudio"

CFLAGS+=		"-DHAVE_LIBJACK"

.include <bsd.port.mk>
