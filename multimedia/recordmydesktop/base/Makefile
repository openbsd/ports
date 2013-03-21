# $OpenBSD: Makefile,v 1.14 2013/03/21 08:46:33 ajacoutot Exp $

COMMENT =		record desktop sessions to an Ogg-Theora-Vorbis file

DISTNAME =		recordmydesktop-0.3.8.1
PKGNAME =		${DISTNAME}
REVISION =		5

WANTLIB =		ICE SM X11 Xdamage Xext Xfixes c m ogg \
			pthread sndio z

LIB_DEPENDS =		audio/libvorbis \
			multimedia/libtheora
WANTLIB +=		vorbis vorbisfile vorbisenc theora

USE_GROFF =		Yes

CONFIGURE_STYLE	=	gnu
CONFIGURE_ARGS	=	--enable-jack=no
CONFIGURE_ENV	=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -logg -lsndio"

.include <bsd.port.mk>
