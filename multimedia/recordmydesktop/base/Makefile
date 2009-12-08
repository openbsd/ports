# $OpenBSD: Makefile,v 1.8 2009/12/08 21:48:09 ajacoutot Exp $

COMMENT=		record desktop sessions to an Ogg-Theora-Vorbis file

DISTNAME=		recordmydesktop-0.3.8.1
PKGNAME=		${DISTNAME}p3

WANTLIB=		ICE SM X11 Xdamage Xext Xfixes c m ogg ossaudio \
			pthread z

LIB_DEPENDS=		vorbis,vorbisfile,vorbisenc::audio/libvorbis \
			theora::multimedia/libtheora

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-jack=no
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -logg -lossaudio"

.include <bsd.port.mk>
