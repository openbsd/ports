# $OpenBSD: Makefile,v 1.9 2010/07/01 10:10:09 jakemsr Exp $

COMMENT=		record desktop sessions to an Ogg-Theora-Vorbis file

DISTNAME=		recordmydesktop-0.3.8.1
PKGNAME=		${DISTNAME}p4

WANTLIB=		ICE SM X11 Xdamage Xext Xfixes c m ogg \
			pthread sndio z

LIB_DEPENDS=		vorbis,vorbisfile,vorbisenc::audio/libvorbis \
			theora::multimedia/libtheora

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-jack=no
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -logg -lsndio"

.include <bsd.port.mk>
