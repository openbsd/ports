# $OpenBSD: Makefile,v 1.11 2010/11/07 20:15:42 espie Exp $

COMMENT =		record desktop sessions to an Ogg-Theora-Vorbis file

DISTNAME =		recordmydesktop-0.3.8.1
PKGNAME =		${DISTNAME}
REVISION =		4

WANTLIB =		ICE SM X11 Xdamage Xext Xfixes c m ogg \
			pthread sndio z

LIB_DEPENDS =		::audio/libvorbis \
			::multimedia/libtheora
WANTLIB +=		vorbis vorbisfile vorbisenc theora

USE_LIBTOOL =		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE	=	gnu
CONFIGURE_ARGS	=	--enable-jack=no
CONFIGURE_ENV	=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -logg -lsndio"

.include <bsd.port.mk>
