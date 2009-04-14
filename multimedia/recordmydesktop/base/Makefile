# $OpenBSD: Makefile,v 1.4 2009/04/14 18:43:39 jasper Exp $

COMMENT=		record desktop sessions to an Ogg-Theora-Vorbis file

DISTNAME=		recordmydesktop-0.3.8.1

WANTLIB=		ICE SM X11 Xdamage Xext Xfixes c m ogg ossaudio pthread z

BUILD_DEPENDS=		::audio/jack
LIB_DEPENDS=		vorbis,vorbisfile,vorbisenc::audio/libvorbis \
			theora::multimedia/libtheora

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-oss=yes \
			--enable-jack=yes
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib -logg -lossaudio -lm"

.include <bsd.port.mk>
