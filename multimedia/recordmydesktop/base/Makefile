# $OpenBSD: Makefile,v 1.1.1.1 2008/07/04 21:15:23 jasper Exp $

COMMENT=		record desktop sessions to an Ogg-Theora-Vorbis file

DISTNAME=		recordmydesktop-0.3.7.3

WANTLIB=		ICE SM X11 Xdamage Xext Xfixes c m ogg ossaudio pthread z

LIB_DEPENDS=		vorbis,vorbisfile,vorbisenc::audio/libvorbis \
			theora::multimedia/libtheora

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-oss=yes \
			--enable-jack=no
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib -logg -lossaudio"

.include <bsd.port.mk>
